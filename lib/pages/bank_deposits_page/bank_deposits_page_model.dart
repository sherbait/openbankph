import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bank_deposits_page_widget.dart' show BankDepositsPageWidget;
import 'package:flutter/material.dart';

class BankDepositsPageModel extends FlutterFlowModel<BankDepositsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getProductOfBank)] action in Container widget.
  ApiCallResponse? productResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
