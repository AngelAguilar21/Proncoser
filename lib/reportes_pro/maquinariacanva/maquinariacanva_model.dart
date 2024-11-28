import '/flutter_flow/flutter_flow_util.dart';
import 'maquinariacanva_widget.dart' show MaquinariacanvaWidget;
import 'package:flutter/material.dart';

class MaquinariacanvaModel extends FlutterFlowModel<MaquinariacanvaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldNombre1 widget.
  FocusNode? textFieldNombre1FocusNode;
  TextEditingController? textFieldNombre1TextController;
  String? Function(BuildContext, String?)?
      textFieldNombre1TextControllerValidator;
  // State field(s) for TextFieldNombre2 widget.
  FocusNode? textFieldNombre2FocusNode;
  TextEditingController? textFieldNombre2TextController;
  String? Function(BuildContext, String?)?
      textFieldNombre2TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNombre1FocusNode?.dispose();
    textFieldNombre1TextController?.dispose();

    textFieldNombre2FocusNode?.dispose();
    textFieldNombre2TextController?.dispose();
  }
}
