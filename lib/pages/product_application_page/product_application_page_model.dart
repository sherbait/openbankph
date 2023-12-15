import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_application_page_widget.dart' show ProductApplicationPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ProductApplicationPageModel
    extends FlutterFlowModel<ProductApplicationPageWidget> {
  ///  Local state fields for this page.

  bool isActionCompleted = true;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for productType widget.
  String? productTypeValue;
  FormFieldController<String>? productTypeValueController;
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for legalName widget.
  FocusNode? legalNameFocusNode;
  TextEditingController? legalNameController;
  String? Function(BuildContext, String?)? legalNameControllerValidator;
  String? _legalNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'twwi2kl0' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for suffix widget.
  FocusNode? suffixFocusNode;
  TextEditingController? suffixController;
  String? Function(BuildContext, String?)? suffixControllerValidator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode;
  TextEditingController? dateOfBirthController;
  String? Function(BuildContext, String?)? dateOfBirthControllerValidator;
  String? _dateOfBirthControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '59uxyqop' /* Field is required */,
      );
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  final phoneNumberMask = MaskTextInputFormatter(mask: '+63 (###) ###-####');
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  String? _phoneNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5x8ctp8k' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for relationshipStatus widget.
  String? relationshipStatusValue;
  FormFieldController<String>? relationshipStatusValueController;
  // State field(s) for dependants widget.
  FocusNode? dependantsFocusNode;
  TextEditingController? dependantsController;
  String? Function(BuildContext, String?)? dependantsControllerValidator;
  String? _dependantsControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fjmugng4' /* Field is required */,
      );
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for highestEducationAttained widget.
  String? highestEducationAttainedValue;
  FormFieldController<String>? highestEducationAttainedValueController;
  // State field(s) for employmentStatus widget.
  String? employmentStatusValue;
  FormFieldController<String>? employmentStatusValueController;
  // Stores action output result for [Backend Call - API (updateCustomerIdentityOfBank)] action in Button widget.
  ApiCallResponse? updateCustomerIdentityResponse;
  // Stores action output result for [Backend Call - API (updateCustomerNumberOfBank)] action in Button widget.
  ApiCallResponse? updateCustomerNumberResponse;
  // Stores action output result for [Backend Call - API (updateCustomerOtherDataOfBank)] action in Button widget.
  ApiCallResponse? updateCustomerDataResponse;
  // Stores action output result for [Backend Call - API (createAccountInBank)] action in Button widget.
  ApiCallResponse? createAccountResponse;
  // Stores action output result for [Backend Call - API (createCustomerAccountLink)] action in Button widget.
  ApiCallResponse? createCustomerAccountLinkResponse;
  // Stores action output result for [Backend Call - API (createTransactionRequest)] action in Button widget.
  ApiCallResponse? createTransactionRequestResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    legalNameControllerValidator = _legalNameControllerValidator;
    dateOfBirthControllerValidator = _dateOfBirthControllerValidator;
    phoneNumberControllerValidator = _phoneNumberControllerValidator;
    dependantsControllerValidator = _dependantsControllerValidator;
  }

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleController?.dispose();

    legalNameFocusNode?.dispose();
    legalNameController?.dispose();

    suffixFocusNode?.dispose();
    suffixController?.dispose();

    dateOfBirthFocusNode?.dispose();
    dateOfBirthController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    dependantsFocusNode?.dispose();
    dependantsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
