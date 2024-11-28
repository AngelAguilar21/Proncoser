import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registrar_maquinaria_widget.dart' show RegistrarMaquinariaWidget;
import 'package:flutter/material.dart';

class RegistrarMaquinariaModel
    extends FlutterFlowModel<RegistrarMaquinariaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TextPlaca widget.
  FocusNode? textPlacaFocusNode;
  TextEditingController? textPlacaTextController;
  String? Function(BuildContext, String?)? textPlacaTextControllerValidator;
  String? _textPlacaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 6) {
      return 'La placa debe tener exactamente 6 dígitos.';
    }
    if (val.length > 6) {
      return 'La placa debe tener exactamente 6 dígitos.';
    }

    return null;
  }

  // State field(s) for TextHorometro widget.
  FocusNode? textHorometroFocusNode;
  TextEditingController? textHorometroTextController;
  String? Function(BuildContext, String?)? textHorometroTextControllerValidator;
  String? _textHorometroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for cmbDescripcion widget.
  String? cmbDescripcionValue;
  FormFieldController<String>? cmbDescripcionValueController;
  // State field(s) for TextFecha widget.
  FocusNode? textFechaFocusNode;
  TextEditingController? textFechaTextController;
  String? Function(BuildContext, String?)? textFechaTextControllerValidator;
  String? _textFechaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 4) {
      return 'Colocar un año válido';
    }
    if (val.length > 4) {
      return 'Colocar un año válido';
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for cmbEstado widget.
  String? cmbEstadoValue;
  FormFieldController<String>? cmbEstadoValueController;
  // State field(s) for TextMarca widget.
  FocusNode? textMarcaFocusNode;
  TextEditingController? textMarcaTextController;
  String? Function(BuildContext, String?)? textMarcaTextControllerValidator;
  String? _textMarcaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length > 1) {
      return 'Ingrese el id de una marca existente';
    }

    return null;
  }

  // State field(s) for TextModelo widget.
  FocusNode? textModeloFocusNode;
  TextEditingController? textModeloTextController;
  String? Function(BuildContext, String?)? textModeloTextControllerValidator;
  String? _textModeloTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length > 1) {
      return 'Ingrese el id de un modelo existente';
    }

    return null;
  }

  // State field(s) for TextTipo widget.
  FocusNode? textTipoFocusNode;
  TextEditingController? textTipoTextController;
  String? Function(BuildContext, String?)? textTipoTextControllerValidator;
  String? _textTipoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length > 1) {
      return 'Ingrese el id de un tipo existente';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MaquinariaRow>? listPlaca;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  MaquinariaRow? idMaquinaria;

  @override
  void initState(BuildContext context) {
    textPlacaTextControllerValidator = _textPlacaTextControllerValidator;
    textHorometroTextControllerValidator =
        _textHorometroTextControllerValidator;
    textFechaTextControllerValidator = _textFechaTextControllerValidator;
    textMarcaTextControllerValidator = _textMarcaTextControllerValidator;
    textModeloTextControllerValidator = _textModeloTextControllerValidator;
    textTipoTextControllerValidator = _textTipoTextControllerValidator;
  }

  @override
  void dispose() {
    textPlacaFocusNode?.dispose();
    textPlacaTextController?.dispose();

    textHorometroFocusNode?.dispose();
    textHorometroTextController?.dispose();

    textFechaFocusNode?.dispose();
    textFechaTextController?.dispose();

    textMarcaFocusNode?.dispose();
    textMarcaTextController?.dispose();

    textModeloFocusNode?.dispose();
    textModeloTextController?.dispose();

    textTipoFocusNode?.dispose();
    textTipoTextController?.dispose();
  }
}
