import '/flutter_flow/flutter_flow_util.dart';
import 'mantenimiento_maquinaria_widget.dart'
    show MantenimientoMaquinariaWidget;
import 'package:flutter/material.dart';

class MantenimientoMaquinariaModel
    extends FlutterFlowModel<MantenimientoMaquinariaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for buscarMaquinaria widget.
  FocusNode? buscarMaquinariaFocusNode;
  TextEditingController? buscarMaquinariaTextController;
  String? Function(BuildContext, String?)?
      buscarMaquinariaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarMaquinariaFocusNode?.dispose();
    buscarMaquinariaTextController?.dispose();
  }
}
