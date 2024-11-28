import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registro_plan_widget.dart' show RegistroPlanWidget;
import 'package:flutter/material.dart';

class RegistroPlanModel extends FlutterFlowModel<RegistroPlanWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  DateTime? datePicked1;
  // State field(s) for placa widget.
  FocusNode? placaFocusNode;
  TextEditingController? placaTextController;
  String? Function(BuildContext, String?)? placaTextControllerValidator;
  String? _placaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese placa';
    }

    return null;
  }

  // State field(s) for Id_Maquinaria widget.
  FocusNode? idMaquinariaFocusNode;
  TextEditingController? idMaquinariaTextController;
  String? Function(BuildContext, String?)? idMaquinariaTextControllerValidator;
  String? _idMaquinariaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese el id maquinaria';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for ruc widget.
  FocusNode? rucFocusNode;
  TextEditingController? rucTextController;
  String? Function(BuildContext, String?)? rucTextControllerValidator;
  String? _rucTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese el ruc';
    }

    return null;
  }

  // State field(s) for cliente_id widget.
  FocusNode? clienteIdFocusNode;
  TextEditingController? clienteIdTextController;
  String? Function(BuildContext, String?)? clienteIdTextControllerValidator;
  String? _clienteIdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese el id cliente';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for DNI_operario widget.
  FocusNode? dNIOperarioFocusNode;
  TextEditingController? dNIOperarioTextController;
  String? Function(BuildContext, String?)? dNIOperarioTextControllerValidator;
  String? _dNIOperarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese DNI del operario';
    }

    return null;
  }

  // State field(s) for id_operario widget.
  FocusNode? idOperarioFocusNode;
  TextEditingController? idOperarioTextController;
  String? Function(BuildContext, String?)? idOperarioTextControllerValidator;
  String? _idOperarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese id operario';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for id_lugar widget.
  FocusNode? idLugarFocusNode;
  TextEditingController? idLugarTextController;
  String? Function(BuildContext, String?)? idLugarTextControllerValidator;
  String? _idLugarTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese id lugar';
    }

    return null;
  }

  DateTime? datePicked2;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    placaTextControllerValidator = _placaTextControllerValidator;
    idMaquinariaTextControllerValidator = _idMaquinariaTextControllerValidator;
    rucTextControllerValidator = _rucTextControllerValidator;
    clienteIdTextControllerValidator = _clienteIdTextControllerValidator;
    dNIOperarioTextControllerValidator = _dNIOperarioTextControllerValidator;
    idOperarioTextControllerValidator = _idOperarioTextControllerValidator;
    idLugarTextControllerValidator = _idLugarTextControllerValidator;
  }

  @override
  void dispose() {
    placaFocusNode?.dispose();
    placaTextController?.dispose();

    idMaquinariaFocusNode?.dispose();
    idMaquinariaTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    rucFocusNode?.dispose();
    rucTextController?.dispose();

    clienteIdFocusNode?.dispose();
    clienteIdTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController6?.dispose();

    dNIOperarioFocusNode?.dispose();
    dNIOperarioTextController?.dispose();

    idOperarioFocusNode?.dispose();
    idOperarioTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController9?.dispose();

    textFieldFocusNode4?.dispose();
    textController10?.dispose();

    idLugarFocusNode?.dispose();
    idLugarTextController?.dispose();
  }
}
