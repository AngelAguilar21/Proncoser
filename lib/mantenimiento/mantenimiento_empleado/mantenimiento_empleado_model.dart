import '/flutter_flow/flutter_flow_util.dart';
import 'mantenimiento_empleado_widget.dart' show MantenimientoEmpleadoWidget;
import 'package:flutter/material.dart';

class MantenimientoEmpleadoModel
    extends FlutterFlowModel<MantenimientoEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtBuscarEmp widget.
  FocusNode? txtBuscarEmpFocusNode;
  TextEditingController? txtBuscarEmpTextController;
  String? Function(BuildContext, String?)? txtBuscarEmpTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtBuscarEmpFocusNode?.dispose();
    txtBuscarEmpTextController?.dispose();
  }
}
