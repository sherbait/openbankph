import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/claim_bonus/claim_bonus_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'product_application_page_model.dart';
export 'product_application_page_model.dart';

class ProductApplicationPageWidget extends StatefulWidget {
  const ProductApplicationPageWidget({
    super.key,
    required this.customerId,
    required this.customerNumber,
    required this.productType,
  });

  final String? customerId;
  final String? customerNumber;
  final ProductType? productType;

  @override
  _ProductApplicationPageWidgetState createState() =>
      _ProductApplicationPageWidgetState();
}

class _ProductApplicationPageWidgetState
    extends State<ProductApplicationPageWidget> {
  late ProductApplicationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductApplicationPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'productApplicationPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.productType == ProductType.deposit) {
        FFAppState().collectionCode = 'gr.bank.collection.deposits';
      } else {
        FFAppState().collectionCode = 'gr.bank.collection.loans';
      }
    });

    _model.titleFocusNode ??= FocusNode();

    _model.legalNameFocusNode ??= FocusNode();

    _model.suffixFocusNode ??= FocusNode();

    _model.dateOfBirthFocusNode ??= FocusNode();

    _model.phoneNumberFocusNode ??= FocusNode();

    _model.dependantsFocusNode ??= FocusNode();

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

    return StreamBuilder<List<AccountListRecord>>(
      stream: queryAccountListRecord(
        queryBuilder: (accountListRecord) => accountListRecord.where(
          'accountUser',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: SpinKitFoldingCube(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            ),
          );
        }
        List<AccountListRecord> productApplicationPageAccountListRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final productApplicationPageAccountListRecord =
            productApplicationPageAccountListRecordList.isNotEmpty
                ? productApplicationPageAccountListRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          body: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 3.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.sizeOf(context).height * 0.84,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 44.0, 20.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'zwkq5n61' /* New Application */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).displaySmall,
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    buttonSize: 48.0,
                                    icon: Icon(
                                      Icons.close_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 30.0,
                                    ),
                                    onPressed: () async {
                                      context.pop();
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Form(
                              key: _model.formKey2,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: OpenBankProjectGroup
                                      .getProductCollectionOfBankCall
                                      .call(
                                    collectionCode: FFAppState().collectionCode,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitFoldingCube(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 40.0,
                                          ),
                                        ),
                                      );
                                    }
                                    final productTypeGetProductCollectionOfBankResponse =
                                        snapshot.data!;
                                    return FlutterFlowDropDown<String>(
                                      controller:
                                          _model.productTypeValueController ??=
                                              FormFieldController<String>(null),
                                      options: (OpenBankProjectGroup
                                              .getProductCollectionOfBankCall
                                              .productCodes(
                                        productTypeGetProductCollectionOfBankResponse
                                            .jsonBody,
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList().map((e) => e.toString())
                                          .toList(),
                                      onChanged: (val) => setState(
                                          () => _model.productTypeValue = val),
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 60.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '86jqbk0g' /* Product Type */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .grayLight,
                                        size: 15.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 12.0, 20.0),
                                      hidesUnderline: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'loo8yegh' /* Your information */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Lexend',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Form(
                              key: _model.formKey1,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: FutureBuilder<ApiCallResponse>(
                                future: OpenBankProjectGroup
                                    .getCustomerOfBankCall
                                    .call(
                                  customerNumber: widget.customerNumber,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 40.0,
                                        height: 40.0,
                                        child: SpinKitFoldingCube(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 40.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final columnGetCustomerOfBankResponse =
                                      snapshot.data!;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 4.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.titleController ??=
                                                        TextEditingController(
                                                  text: getJsonField(
                                                    columnGetCustomerOfBankResponse
                                                        .jsonBody,
                                                    r'''$.title''',
                                                  ).toString(),
                                                ),
                                                focusNode:
                                                    _model.titleFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'qzq3adkb' /* Title */,
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'q5wey6ei' /* Title */,
                                                  ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Lexend',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                keyboardType:
                                                    TextInputType.name,
                                                validator: _model
                                                    .titleControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 4.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                        .legalNameController ??=
                                                    TextEditingController(
                                                  text: getJsonField(
                                                    columnGetCustomerOfBankResponse
                                                        .jsonBody,
                                                    r'''$.legal_name''',
                                                  ).toString(),
                                                ),
                                                focusNode:
                                                    _model.legalNameFocusNode,
                                                textCapitalization:
                                                    TextCapitalization.words,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '76usexeb' /* Name */,
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'iv4sow0s' /* Your legal name */,
                                                  ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Lexend',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                keyboardType:
                                                    TextInputType.name,
                                                validator: _model
                                                    .legalNameControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.suffixController ??=
                                                        TextEditingController(
                                                  text: getJsonField(
                                                    columnGetCustomerOfBankResponse
                                                        .jsonBody,
                                                    r'''$.name_suffix''',
                                                  ).toString(),
                                                ),
                                                focusNode:
                                                    _model.suffixFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'bri7jhgi' /* Suffix */,
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ea9r8yv4' /* Suffix */,
                                                  ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Lexend',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                keyboardType:
                                                    TextInputType.name,
                                                validator: _model
                                                    .suffixControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 4.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                        .dateOfBirthController ??=
                                                    TextEditingController(
                                                  text: functions
                                                      .toDate(getJsonField(
                                                    columnGetCustomerOfBankResponse
                                                        .jsonBody,
                                                    r'''$.date_of_birth''',
                                                  ).toString()),
                                                ),
                                                focusNode:
                                                    _model.dateOfBirthFocusNode,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'cbqn9ele' /* Date of birth */,
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'y3sl9fzg' /* Date you were born */,
                                                  ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .dateOfBirthControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final datePickedDate =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate: DateTime(1900),
                                                  lastDate: getCurrentTimestamp,
                                                  builder: (context, child) {
                                                    return wrapInMaterialDatePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 32.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      pickerBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      pickerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      selectedDateTimeForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      actionButtonForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );

                                                if (datePickedDate != null) {
                                                  safeSetState(() {
                                                    _model.datePicked =
                                                        DateTime(
                                                      datePickedDate.year,
                                                      datePickedDate.month,
                                                      datePickedDate.day,
                                                    );
                                                  });
                                                }
                                                setState(() {
                                                  _model.dateOfBirthController
                                                      ?.text = dateTimeFormat(
                                                    'yMd',
                                                    _model.datePicked,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  );
                                                });
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'nru4juyt' /* Select */,
                                              ),
                                              icon: const Icon(
                                                Icons.date_range_rounded,
                                                size: 15.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 100.0,
                                                height: 50.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall,
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                        .phoneNumberController ??=
                                                    TextEditingController(
                                                  text: getJsonField(
                                                    columnGetCustomerOfBankResponse
                                                        .jsonBody,
                                                    r'''$.mobile_phone_number''',
                                                  ).toString(),
                                                ),
                                                focusNode:
                                                    _model.phoneNumberFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'xl9ifrui' /* Phone */,
                                                  ),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'b15jl7xa' /* e.g. +63 (901) 234-567 */,
                                                  ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .phoneNumberControllerValidator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  _model.phoneNumberMask
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'jtyyano1' /* Family */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Lexend',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 4.0, 0.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .relationshipStatusValueController ??=
                                                  FormFieldController<String>(
                                                _model.relationshipStatusValue ??=
                                                    getJsonField(
                                                  columnGetCustomerOfBankResponse
                                                      .jsonBody,
                                                  r'''$.relationship_status''',
                                                ).toString(),
                                              ),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ralj7ecc' /* single */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7r8nklfd' /* married */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '1vfktt25' /* widowed */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'c93selzn' /* annulled */,
                                                )
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.relationshipStatusValue =
                                                      val),
                                              width: 250.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'x5liuj2x' /* Marital status */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grayLight,
                                                size: 15.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: SizedBox(
                                                width: 50.0,
                                                child: TextFormField(
                                                  controller: _model
                                                          .dependantsController ??=
                                                      TextEditingController(
                                                    text: getJsonField(
                                                      columnGetCustomerOfBankResponse
                                                          .jsonBody,
                                                      r'''$.dependants''',
                                                    ).toString(),
                                                  ),
                                                  focusNode: _model
                                                      .dependantsFocusNode,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'stf3yi6h' /* # of dependents */,
                                                    ),
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'zqz1cuje' /* # of dependents */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .dependantsControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(RegExp('[0-9]'))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'v1l35p40' /* Education & Employment */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Lexend',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .highestEducationAttainedValueController ??=
                                                  FormFieldController<String>(
                                                _model.highestEducationAttainedValue ??=
                                                    getJsonField(
                                                  columnGetCustomerOfBankResponse
                                                      .jsonBody,
                                                  r'''$.highest_education_attained''',
                                                ).toString(),
                                              ),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'fjavsl0c' /* No formal education */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'jgbg9ayw' /* Primary education (Elementary ... */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'fohltg9z' /* Secondary education (High scho... */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '9ej589je' /* Vocational/Technical training ... */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'it221wax' /* Associate's degree */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'lbokeeg9' /* Bachelor's degree */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'rxcgj8y6' /* Master's degree */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'c22xc4k6' /* Doctorate (Ph.D., MD, JD, etc.... */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '874vdt74' /* Professional degree (such as M... */,
                                                )
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.highestEducationAttainedValue =
                                                      val),
                                              width: 300.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'y11m6v5v' /* Highest education attained */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grayLight,
                                                size: 15.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .employmentStatusValueController ??=
                                                  FormFieldController<String>(
                                                _model.employmentStatusValue ??=
                                                    getJsonField(
                                                  columnGetCustomerOfBankResponse
                                                      .jsonBody,
                                                  r'''$.employment_status''',
                                                ).toString(),
                                              ),
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'dklsi6c3' /* Employed (Full-time) */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'y59v0bxf' /* Employed (Part-time) */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'bdqscu5g' /* Self-employed */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5tmz23c4' /* Unemployed (actively seeking e... */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'c8q7cowp' /* Unemployed (not currently seek... */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'dd1edgu9' /* Retired */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ky3ega69' /* Student (full-time) */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5l2kqwap' /* Student (part-time) */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'poxmy5p1' /* Homemaker */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'l97hlwv8' /* Freelancer/Contractor */,
                                                )
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  _model.employmentStatusValue =
                                                      val),
                                              width: 300.0,
                                              height: 50.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'hh3kf0kx' /* Employment status */,
                                              ),
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grayLight,
                                                size: 15.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 2.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 16.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                var shouldSetState = false;
                                if (_model.formKey2.currentState == null ||
                                    !_model.formKey2.currentState!.validate()) {
                                  return;
                                }
                                if (_model.productTypeValue == null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Please select a product.',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  return;
                                }
                                if (_model.formKey1.currentState == null ||
                                    !_model.formKey1.currentState!.validate()) {
                                  return;
                                }
                                if (_model.relationshipStatusValue == null) {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Marital status is required.',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  return;
                                }
                                if (_model.highestEducationAttainedValue ==
                                    null) {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Education attainment is required.',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  return;
                                }
                                if (_model.employmentStatusValue == null) {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Employment status is required.',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  return;
                                }
                                var confirmDialogResponse = await showDialog<
                                        bool>(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Confirm application'),
                                          content: const Text(
                                              'I have read and agree to abide by the terms and conditions outlined. By clicking \'Agree\', I acknowledge that I understand and consent to the terms of service, including but not limited to privacy policies, user guidelines, and any other applicable agreements. My continued use of this service/platform signifies my acceptance of these terms.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext, false),
                                              child: const Text('Cancel'),
                                            ),
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext, true),
                                              child: const Text('Agree'),
                                            ),
                                          ],
                                        );
                                      },
                                    ) ??
                                    false;
                                if (confirmDialogResponse) {
                                  setState(() {
                                    _model.isActionCompleted = false;
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 5000));
                                  _model.updateCustomerIdentityResponse =
                                      await OpenBankProjectGroup
                                          .updateCustomerIdentityOfBankCall
                                          .call(
                                    customerId: widget.customerId,
                                    legalName: _model.legalNameController.text,
                                    title: _model.titleController.text,
                                    nameSuffix: _model.suffixController.text,
                                    dateOfBirth: functions.toDatetimeZ(
                                        _model.dateOfBirthController.text),
                                  );
                                  shouldSetState = true;
                                  if ((_model.updateCustomerIdentityResponse
                                          ?.succeeded ??
                                      true)) {
                                    _model.updateCustomerNumberResponse =
                                        await OpenBankProjectGroup
                                            .updateCustomerNumberOfBankCall
                                            .call(
                                      customerId: widget.customerId,
                                      phoneNumber:
                                          _model.phoneNumberController.text,
                                    );
                                    shouldSetState = true;
                                    if ((_model.updateCustomerNumberResponse
                                            ?.succeeded ??
                                        true)) {
                                      _model.updateCustomerDataResponse =
                                          await OpenBankProjectGroup
                                              .updateCustomerOtherDataOfBankCall
                                              .call(
                                        customerId: widget.customerId,
                                        relationshipStatus:
                                            _model.relationshipStatusValue,
                                        dependants: int.tryParse(
                                            _model.dependantsController.text),
                                        highestEducationAttained: _model
                                            .highestEducationAttainedValue,
                                        employmentStatus:
                                            _model.employmentStatusValue,
                                      );
                                      shouldSetState = true;
                                      if ((_model.updateCustomerDataResponse
                                              ?.succeeded ??
                                          true)) {
                                        _model.createAccountResponse =
                                            await OpenBankProjectGroup
                                                .createAccountInBankCall
                                                .call(
                                          productCode: _model.productTypeValue,
                                          accountLabel: _model.productTypeValue,
                                          accountNumber:
                                              random_data.randomString(
                                            7,
                                            7,
                                            false,
                                            false,
                                            true,
                                          ),
                                        );
                                        shouldSetState = true;
                                        if ((_model.createAccountResponse
                                                ?.succeeded ??
                                            true)) {
                                          _model.createCustomerAccountLinkResponse =
                                              await OpenBankProjectGroup
                                                  .createCustomerAccountLinkCall
                                                  .call(
                                            customerId: widget.customerId,
                                            accountId: getJsonField(
                                              (_model.createAccountResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.account_id''',
                                            ).toString(),
                                          );
                                          shouldSetState = true;
                                          if ((_model
                                                  .createCustomerAccountLinkResponse
                                                  ?.succeeded ??
                                              true)) {
                                            if (widget.productType ==
                                                ProductType.deposit) {
                                              await productApplicationPageAccountListRecord!
                                                  .reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'accountAsset':
                                                        FieldValue.arrayUnion([
                                                      getJsonField(
                                                        (_model.createAccountResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.account_id''',
                                                      ).toString()
                                                    ]),
                                                  },
                                                ),
                                              });
                                              if (productApplicationPageAccountListRecord.newAssetBonus >
                                                  0.0) {
                                                setState(() {
                                                  _model.isActionCompleted =
                                                      true;
                                                });
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: const ClaimBonusWidget(),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));

                                                _model.createTransactionRequestResponse =
                                                    await OpenBankProjectGroup
                                                        .createTransactionRequestCall
                                                        .call(
                                                  description: 'Sign up bonus',
                                                  amount:
                                                      productApplicationPageAccountListRecord
                                                          .newAssetBonus
                                                          .toString(),
                                                  destinationAccountId:
                                                      OpenBankProjectGroup
                                                          .createAccountInBankCall
                                                          .accountId(
                                                            (_model.createAccountResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          .toString(),
                                                );
                                                shouldSetState = true;
                                                if (!(_model
                                                        .createTransactionRequestResponse
                                                        ?.succeeded ??
                                                    true)) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('Message'),
                                                        content: Text((_model
                                                                    .createTransactionRequestResponse
                                                                    ?.jsonBody ??
                                                                '')
                                                            .toString()),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: const Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('Message'),
                                                      content: const Text(
                                                          'Congratulations! Your application is successful.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Great!'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
                                              await productApplicationPageAccountListRecord!
                                                  .reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'accountLiability':
                                                        FieldValue.arrayUnion([
                                                      getJsonField(
                                                        (_model.createAccountResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.account_id''',
                                                      ).toString()
                                                    ]),
                                                  },
                                                ),
                                              });
                                            }
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Message'),
                                                  content: const Text(FFAppConstants
                                                      .genericErrorMessage),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: const Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          }
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text('Message'),
                                                content: const Text(FFAppConstants
                                                    .genericErrorMessage),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: const Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text('Message'),
                                              content: const Text(FFAppConstants
                                                  .genericErrorMessage),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Message'),
                                            content: const Text(FFAppConstants
                                                .genericErrorMessage),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Message'),
                                          content: const Text(FFAppConstants
                                              .genericErrorMessage),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  context.pushNamed('MY_homePage');
                                } else {
                                  if (shouldSetState) setState(() {});
                                  return;
                                }

                                if (shouldSetState) setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                '3n9nmk1j' /* Submit */,
                              ),
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 70.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).tertiary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Lexend',
                                      color: FlutterFlowTheme.of(context)
                                          .textColor,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'bfxugebm' /* Tap above to complete applicat... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend',
                          color: const Color(0x43000000),
                        ),
                  ),
                ],
              ),
              if (!_model.isActionCompleted)
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    child: Lottie.asset(
                      'assets/lottie_animations/Animation_-_1701178543365.json',
                      width: 150.0,
                      height: 130.0,
                      fit: BoxFit.scaleDown,
                      animate: true,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
