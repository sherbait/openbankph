import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'transfer_funds_widget.dart' show TransferFundsWidget;
import 'package:flutter/material.dart';

class TransferFundsModel extends FlutterFlowModel<TransferFundsWidget> {
  ///  Local state fields for this page.

  String availableBalance = '0.00';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for sourceAccount widget.
  String? sourceAccountValue;
  FormFieldController<String>? sourceAccountValueController;
  // Stores action output result for [Backend Call - API (getAccountInBank)] action in sourceAccount widget.
  ApiCallResponse? getAccountResponse;
  // State field(s) for targetAccount widget.
  String? targetAccountValue;
  FormFieldController<String>? targetAccountValueController;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  String? _descriptionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'em0xgl00' /* Field is required. */,
      );
    }

    return null;
  }

  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  String? _amountControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '087el8xy' /* Field is required. */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (createTransactionRequest)] action in Button widget.
  ApiCallResponse? createTransactionResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    descriptionControllerValidator = _descriptionControllerValidator;
    amountControllerValidator = _amountControllerValidator;
  }

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    amountFocusNode?.dispose();
    amountController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
