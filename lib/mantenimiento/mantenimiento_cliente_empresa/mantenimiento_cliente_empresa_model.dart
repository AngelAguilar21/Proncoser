import '/flutter_flow/flutter_flow_util.dart';
import 'mantenimiento_cliente_empresa_widget.dart'
    show MantenimientoClienteEmpresaWidget;
import 'package:flutter/material.dart';

class MantenimientoClienteEmpresaModel
    extends FlutterFlowModel<MantenimientoClienteEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for buscarEmpresa widget.
  FocusNode? buscarEmpresaFocusNode;
  TextEditingController? buscarEmpresaTextController;
  String? Function(BuildContext, String?)? buscarEmpresaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarEmpresaFocusNode?.dispose();
    buscarEmpresaTextController?.dispose();
  }
}
