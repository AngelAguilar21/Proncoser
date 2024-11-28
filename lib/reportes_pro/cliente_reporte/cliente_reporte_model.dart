import '/flutter_flow/flutter_flow_util.dart';
import 'cliente_reporte_widget.dart' show ClienteReporteWidget;
import 'package:flutter/material.dart';

class ClienteReporteModel extends FlutterFlowModel<ClienteReporteWidget> {
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
