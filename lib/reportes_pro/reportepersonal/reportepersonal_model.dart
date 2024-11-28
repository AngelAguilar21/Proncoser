import '/flutter_flow/flutter_flow_util.dart';
import 'reportepersonal_widget.dart' show ReportepersonalWidget;
import 'package:flutter/material.dart';

class ReportepersonalModel extends FlutterFlowModel<ReportepersonalWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldNombre widget.
  FocusNode? textFieldNombreFocusNode;
  TextEditingController? textFieldNombreTextController;
  String? Function(BuildContext, String?)?
      textFieldNombreTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNombreFocusNode?.dispose();
    textFieldNombreTextController?.dispose();
  }
}
