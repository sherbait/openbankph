import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bank_branch_info_model.dart';
export 'bank_branch_info_model.dart';

class BankBranchInfoWidget extends StatefulWidget {
  const BankBranchInfoWidget({
    super.key,
    required this.branchInfo,
  });

  final dynamic branchInfo;

  @override
  _BankBranchInfoWidgetState createState() => _BankBranchInfoWidgetState();
}

class _BankBranchInfoWidgetState extends State<BankBranchInfoWidget> {
  late BankBranchInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BankBranchInfoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 700.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.name''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge,
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            widget.branchInfo,
                                            r'''$.branch_type''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 44.0,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 0.0, 0.0),
                            child: Text(
                              getJsonField(
                                widget.branchInfo,
                                r'''$.more_info''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '0bjratsp' /* Address */,
                              ),
                              style: FlutterFlowTheme.of(context).labelLarge,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.address.line_1''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'y096lu4w' /* ,  */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.address.line_2''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'u0v34yc4' /* ,  */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.address.line_3''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.address.city''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'w3nruklh' /* ,  */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.address.county''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'nurx91a8' /* ,  */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.address.state''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.address.country_code''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          2.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.address.postcode''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'jhej4yfw' /* Contact */,
                              ),
                              style: FlutterFlowTheme.of(context).labelLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 0.0, 0.0),
                            child: Text(
                              getJsonField(
                                widget.branchInfo,
                                r'''$.phone_number''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '5op9hlee' /* Features */,
                              ),
                              style: FlutterFlowTheme.of(context).labelLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 0.0, 0.0),
                            child: Icon(
                              Icons.accessible_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'mbov7x18' /* Hours of Operation */,
                              ),
                              style: FlutterFlowTheme.of(context).labelLarge,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 60.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'kvv12mhp' /* Monday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.monday[0].opening_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'j4bmydx5' /* - */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.monday[0].closing_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 60.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '79k2fjyk' /* Tuesday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.tuesday[0].opening_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '6b74tzmn' /* - */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.tuesday[0].closing_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 36.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '8pcgmm2o' /* Wednesday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.wednesday[0].opening_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '7zwbva1f' /* - */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.wednesday[0].closing_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 53.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '2hwqlnqs' /* Thursday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.thursday[0].opening_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'me4h7axd' /* - */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.thursday[0].closing_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 72.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '5owc5nin' /* Friday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.friday[0].opening_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '3j4c7c17' /* - */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.friday[0].closing_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 52.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '9xwr7qqc' /* Saturday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.saturday[0].opening_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'zhqhnxc0' /* - */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.saturday[0].closing_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 64.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'swnivnet' /* Sunday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.sunday[0].opening_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'pw9k5j3q' /* - */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                      Text(
                                        getJsonField(
                                          widget.branchInfo,
                                          r'''$.lobby.sunday[0].closing_time''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
