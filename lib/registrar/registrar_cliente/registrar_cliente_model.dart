import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registrar_cliente_widget.dart' show RegistrarClienteWidget;
import 'package:flutter/material.dart';

class RegistrarClienteModel extends FlutterFlowModel<RegistrarClienteWidget> {
  ///  Local state fields for this page.

  bool mostrarErrorSexo = false;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for ChoiceChipsCliente widget.
  FormFieldController<List<String>>? choiceChipsClienteValueController;
  String? get choiceChipsClienteValue =>
      choiceChipsClienteValueController?.value?.firstOrNull;
  set choiceChipsClienteValue(String? val) =>
      choiceChipsClienteValueController?.value = val != null ? [val] : [];
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

  // State field(s) for cmbSexo widget.
  String? cmbSexoValue;
  FormFieldController<String>? cmbSexoValueController;
  // State field(s) for textoRazonSocial widget.
  FocusNode? textoRazonSocialFocusNode;
  TextEditingController? textoRazonSocialTextController;
  String? Function(BuildContext, String?)?
      textoRazonSocialTextControllerValidator;
  String? _textoRazonSocialTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for textoRUC widget.
  FocusNode? textoRUCFocusNode;
  TextEditingController? textoRUCTextController;
  String? Function(BuildContext, String?)? textoRUCTextControllerValidator;
  String? _textoRUCTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 11) {
      return 'RUC debe tener 11 digitos';
    }
    if (val.length > 11) {
      return 'RUC debe tener 11 digitos';
    }

    return null;
  }

  // State field(s) for textoRepresentante widget.
  FocusNode? textoRepresentanteFocusNode;
  TextEditingController? textoRepresentanteTextController;
  String? Function(BuildContext, String?)?
      textoRepresentanteTextControllerValidator;
  String? _textoRepresentanteTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for textoDirecion widget.
  FocusNode? textoDirecionFocusNode;
  TextEditingController? textoDirecionTextController;
  String? Function(BuildContext, String?)? textoDirecionTextControllerValidator;
  String? _textoDirecionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

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
      return 'Correo inválido';
    }
    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ClientePersonaRow>? dniResulCliePersona;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ClienteRow? clienteIdPerso;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ClienteEmpresaRow>? dniResulClieEmpresa;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ClienteRow? clienteIdEmpre;

  @override
  void initState(BuildContext context) {
    textoNombresTextControllerValidator = _textoNombresTextControllerValidator;
    textoApellidosTextControllerValidator =
        _textoApellidosTextControllerValidator;
    textoDNITextControllerValidator = _textoDNITextControllerValidator;
    textoRazonSocialTextControllerValidator =
        _textoRazonSocialTextControllerValidator;
    textoRUCTextControllerValidator = _textoRUCTextControllerValidator;
    textoRepresentanteTextControllerValidator =
        _textoRepresentanteTextControllerValidator;
    textoDirecionTextControllerValidator =
        _textoDirecionTextControllerValidator;
    textoTelefonoTextControllerValidator =
        _textoTelefonoTextControllerValidator;
    textoCorreoTextControllerValidator = _textoCorreoTextControllerValidator;
  }

  @override
  void dispose() {
    textoNombresFocusNode?.dispose();
    textoNombresTextController?.dispose();

    textoApellidosFocusNode?.dispose();
    textoApellidosTextController?.dispose();

    textoDNIFocusNode?.dispose();
    textoDNITextController?.dispose();

    textoRazonSocialFocusNode?.dispose();
    textoRazonSocialTextController?.dispose();

    textoRUCFocusNode?.dispose();
    textoRUCTextController?.dispose();

    textoRepresentanteFocusNode?.dispose();
    textoRepresentanteTextController?.dispose();

    textoDirecionFocusNode?.dispose();
    textoDirecionTextController?.dispose();

    textoTelefonoFocusNode?.dispose();
    textoTelefonoTextController?.dispose();

    textoCorreoFocusNode?.dispose();
    textoCorreoTextController?.dispose();
  }
}
