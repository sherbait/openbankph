import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'm_y_account_details_model.dart';
export 'm_y_account_details_model.dart';

class MYAccountDetailsWidget extends StatefulWidget {
  const MYAccountDetailsWidget({
    super.key,
    required this.accountId,
  });

  final String? accountId;

  @override
  _MYAccountDetailsWidgetState createState() => _MYAccountDetailsWidgetState();
}

class _MYAccountDetailsWidgetState extends State<MYAccountDetailsWidget>
    with TickerProviderStateMixin {
  late MYAccountDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: const Offset(-50.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MYAccountDetailsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MY_accountDetails'});
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).grayLight,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'kvo7n0ei' /* Account Details */,
            ),
            style: FlutterFlowTheme.of(context).headlineSmall,
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: OpenBankProjectGroup.getAccountTransactionsCall.call(
              accountId: widget.accountId,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 40.0,
                    height: 40.0,
                    child: SpinKitFoldingCube(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 40.0,
                    ),
                  ),
                );
              }
              final columnGetAccountTransactionsResponse = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: OpenBankProjectGroup.getAccountInBankCall.call(
                          accountId: widget.accountId,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: SpinKitFoldingCube(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 40.0,
                                ),
                              ),
                            );
                          }
                          final containerGetAccountInBankResponse =
                              snapshot.data!;
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).tertiary,
                                  const Color(0xFFEE8B60)
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(1.0, -1.0),
                                end: const AlignmentDirectional(-1.0, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    OpenBankProjectGroup.getAccountInBankCall
                                        .accountName(
                                          containerGetAccountInBankResponse
                                              .jsonBody,
                                        )
                                        .toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          '₱ ${OpenBankProjectGroup.getAccountInBankCall.balance(
                                                containerGetAccountInBankResponse
                                                    .jsonBody,
                                              ).toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall,
                                        ),
                                      ),
                                      Text(
                                        OpenBankProjectGroup
                                            .getAccountInBankCall
                                            .accountNumber(
                                              containerGetAccountInBankResponse
                                                  .jsonBody,
                                            )
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lexend',
                                              color: const Color(0x7DEEEEEE),
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (false)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: LinearPercentIndicator(
                                            percent: 0.4,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.87,
                                            lineHeight: 20.0,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor:
                                                FlutterFlowTheme.of(context)
                                                    .textColor,
                                            backgroundColor: const Color(0x33F1F4F8),
                                            center: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '87rfaar5' /*   */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lexend',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                            ),
                                            barRadius: const Radius.circular(40.0),
                                            padding: EdgeInsets.zero,
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'p98wor2n' /* Transactions */,
                        ),
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        final transactionList = getJsonField(
                          columnGetAccountTransactionsResponse.jsonBody,
                          r'''$.transactions''',
                        ).toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: transactionList.length,
                          itemBuilder: (context, transactionListIndex) {
                            final transactionListItem =
                                transactionList[transactionListIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 1.0),
                              child: Container(
                                width: double.infinity,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      offset: const Offset(0.0, 1.0),
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 5.0, 16.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            ((OpenBankProjectGroup
                                                            .getAccountTransactionsCall
                                                            .descriptions(
                                              columnGetAccountTransactionsResponse
                                                  .jsonBody,
                                            ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    transactionListIndex])
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              ((OpenBankProjectGroup
                                                              .getAccountTransactionsCall
                                                              .completedDates(
                                                columnGetAccountTransactionsResponse
                                                    .jsonBody,
                                              ) as List)
                                                          .map<String>((s) =>
                                                              s.toString())
                                                          .toList()[
                                                      transactionListIndex])
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '₱ ${((OpenBankProjectGroup.getAccountTransactionsCall.amounts(
                                              columnGetAccountTransactionsResponse
                                                  .jsonBody,
                                            ) as List).map<String>((s) => s.toString()).toList()[transactionListIndex]).toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9p90mdbs' /* Balance: */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Lexend',
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                '₱ ${((OpenBankProjectGroup.getAccountTransactionsCall.newBalances(
                                                  columnGetAccountTransactionsResponse
                                                      .jsonBody,
                                                ) as List).map<String>((s) => s.toString()).toList()[transactionListIndex]).toString()}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Lexend',
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    if (false)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '8uoqrwbj' /* Last Month */,
                          ),
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                    if (false)
                      ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 1.0),
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    offset: const Offset(0.0, 1.0),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 5.0, 16.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'mz94bgzp' /* Walden Books */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'tvcdyvgq' /* Feb 15, 2022 */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'q02b6oof' /* $52.20 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 1.0),
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    offset: const Offset(0.0, 1.0),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 5.0, 16.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'zhtxhnb8' /* Border Bookstore */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'zqbx7s0d' /* Feb 15, 2022 */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'm8i8fymu' /* $59.20 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
