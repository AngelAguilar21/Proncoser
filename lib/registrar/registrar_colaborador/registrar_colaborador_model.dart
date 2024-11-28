import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registrar_colaborador_widget.dart' show RegistrarColaboradorWidget;
import 'package:flutter/material.dart';

class RegistrarColaboradorModel
    extends FlutterFlowModel<RegistrarColaboradorWidget> {
  ///  Local state fields for this page.

  String mostrarErrorFechaNaci = 'false';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for textoNombres widget.
  FocusNode? textoNombresFocusNode;
  TextEditingController? textoNombresTextController;
  String? Function(BuildContext, String?)? textoNombresTextControllerValidator;
  String? _textoNombresTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for textoApellidos widget.
  FocusNode? textoApellidosFocusNode;
  TextEditingController? textoApellidosTextController;
  String? Function(BuildContext, String?)?
      textoApellidosTextControllerValidator;
  String? _textoApellidosTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for textoDNI widget.
  FocusNode? textoDNIFocusNode;
  TextEditingController? textoDNITextController;
  String? Function(BuildContext, String?)? textoDNITextControllerValidator;
  String? _textoDNITextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^\\d{8}\$').hasMatch(val)) {
      return 'DNI debe tener 8 dígitos numéricos';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for textoTelefono widget.
  FocusNode? textoTelefonoFocusNode;
  TextEditingController? textoTelefonoTextController;
  String? Function(BuildContext, String?)? textoTelefonoTextControllerValidator;
  String? _textoTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp('^(\\+\\d{1,3})?\\d{8,9}\$').hasMatch(val)) {
      return 'Teléfono / Celular inválido';
    }
    return null;
  }

  // State field(s) for textoCorreo widget.
  FocusNode? textoCorreoFocusNode;
  TextEditingController? textoCorreoTextController;
  String? Function(BuildContext, String?)? textoCorreoTextControllerValidator;
  String? _textoCorreoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for textoConstrasenia widget.
  FocusNode? textoConstraseniaFocusNode;
  TextEditingController? textoConstraseniaTextController;
  String? Function(BuildContext, String?)?
      textoConstraseniaTextControllerValidator;
  String? _textoConstraseniaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for cmbRol widget.
  String? cmbRolValue;
  FormFieldController<String>? cmbRolValueController;
  // State field(s) for ChoiceChipsEstado widget.
  FormFieldController<List<String>>? choiceChipsEstadoValueController;
  String? get choiceChipsEstadoValue =>
      choiceChipsEstadoValueController?.value?.firstOrNull;
  set choiceChipsEstadoValue(String? val) =>
      choiceChipsEstadoValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<PersonalRow>? dniResultadoPersonal;

  @override
  void initState(BuildContext context) {
    textoNombresTextControllerValidator = _textoNombresTextControllerValidator;
    textoApellidosTextControllerValidator =
        _textoApellidosTextControllerValidator;
    textoDNITextControllerValidator = _textoDNITextControllerValidator;
    textoTelefonoTextControllerValidator =
        _textoTelefonoTextControllerValidator;
    textoCorreoTextControllerValidator = _textoCorreoTextControllerValidator;
    textoConstraseniaTextControllerValidator =
        _textoConstraseniaTextControllerValidator;
  }

  @override
  void dispose() {
    textoNombresFocusNode?.dispose();
    textoNombresTextController?.dispose();

    textoApellidosFocusNode?.dispose();
    textoApellidosTextController?.dispose();

    textoDNIFocusNode?.dispose();
    textoDNITextController?.dispose();

    textoTelefonoFocusNode?.dispose();
    textoTelefonoTextController?.dispose();

    textoCorreoFocusNode?.dispose();
    textoCorreoTextController?.dispose();

    textoConstraseniaFocusNode?.dispose();
    textoConstraseniaTextController?.dispose();
  }
}
