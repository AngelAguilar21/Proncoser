import '/flutter_flow/flutter_flow_util.dart';
import 'mantenimiento_cliente_persona_widget.dart'
    show MantenimientoClientePersonaWidget;
import 'package:flutter/material.dart';

class MantenimientoClientePersonaModel
    extends FlutterFlowModel<MantenimientoClientePersonaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for buscarPersona widget.
  FocusNode? buscarPersonaFocusNode;
  TextEditingController? buscarPersonaTextController;
  String? Function(BuildContext, String?)? buscarPersonaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarPersonaFocusNode?.dispose();
    buscarPersonaTextController?.dispose();
  }
}
