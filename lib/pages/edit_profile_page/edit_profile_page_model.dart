import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:flutter/material.dart';

class EditProfilePageModel extends FlutterFlowModel<EditProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailController;
  String? Function(BuildContext, String?)? yourEmailControllerValidator;
  // State field(s) for yourAge widget.
  FocusNode? yourAgeFocusNode;
  TextEditingController? yourAgeController;
  String? Function(BuildContext, String?)? yourAgeControllerValidator;
  // State field(s) for yourTitle widget.
  FocusNode? yourTitleFocusNode;
  TextEditingController? yourTitleController;
  String? Function(BuildContext, String?)? yourTitleControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    displayNameFocusNode?.dispose();
    displayNameController?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailController?.dispose();

    yourAgeFocusNode?.dispose();
    yourAgeController?.dispose();

    yourTitleFocusNode?.dispose();
    yourTitleController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
