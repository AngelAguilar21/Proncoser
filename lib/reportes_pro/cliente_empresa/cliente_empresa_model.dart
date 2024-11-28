import '/flutter_flow/flutter_flow_util.dart';
import 'cliente_empresa_widget.dart' show ClienteEmpresaWidget;
import 'package:flutter/material.dart';

class ClienteEmpresaModel extends FlutterFlowModel<ClienteEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldNombrePersona widget.
  FocusNode? textFieldNombrePersonaFocusNode;
  TextEditingController? textFieldNombrePersonaTextController;
  String? Function(BuildContext, String?)?
      textFieldNombrePersonaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNombrePersonaFocusNode?.dispose();
    textFieldNombrePersonaTextController?.dispose();
  }
}
