import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'support_page_widget.dart' show SupportPageWidget;
import 'package:flutter/material.dart';

class SupportPageModel extends FlutterFlowModel<SupportPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'm8jeiyo5' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rk8s97m5' /* Field is required */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TicketsRecord? submitTicketDocument;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController3Validator = _textController3Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
