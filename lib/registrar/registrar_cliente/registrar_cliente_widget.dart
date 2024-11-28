import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'registrar_cliente_model.dart';
export 'registrar_cliente_model.dart';

class RegistrarClienteWidget extends StatefulWidget {
  const RegistrarClienteWidget({
    super.key,
    int? selePagina,
  }) : selePagina = selePagina ?? 1;

  final int selePagina;

  @override
  State<RegistrarClienteWidget> createState() => _RegistrarClienteWidgetState();
}

class _RegistrarClienteWidgetState extends State<RegistrarClienteWidget> {
  late RegistrarClienteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistrarClienteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.mostrarErrorSexo = false;
      safeSetState(() {});
    });

    _model.textoNombresTextController ??= TextEditingController();
    _model.textoNombresFocusNode ??= FocusNode();

    _model.textoApellidosTextController ??= TextEditingController();
    _model.textoApellidosFocusNode ??= FocusNode();

    _model.textoDNITextController ??= TextEditingController();
    _model.textoDNIFocusNode ??= FocusNode();

    _model.textoRazonSocialTextController ??= TextEditingController();
    _model.textoRazonSocialFocusNode ??= FocusNode();

    _model.textoRUCTextController ??= TextEditingController();
    _model.textoRUCFocusNode ??= FocusNode();

    _model.textoRepresentanteTextController ??= TextEditingController();
    _model.textoRepresentanteFocusNode ??= FocusNode();

    _model.textoDirecionTextController ??= TextEditingController();
    _model.textoDirecionFocusNode ??= FocusNode();

    _model.textoTelefonoTextController ??= TextEditingController();
    _model.textoTelefonoFocusNode ??= FocusNode();

    _model.textoCorreoTextController ??= TextEditingController();
    _model.textoCorreoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Registrar Nuevo Cliente',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 757.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF0F5F9),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(10.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 10.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 1.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 1.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Tipo de Cliente',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 7.0),
                                          child: FlutterFlowChoiceChips(
                                            options: const [
                                              ChipData('Persona'),
                                              ChipData('Empresa')
                                            ],
                                            onChanged: (val) => safeSetState(() =>
                                                _model.choiceChipsClienteValue =
                                                    val?.firstOrNull),
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              iconSize: 16.0,
                                              labelPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 8.0, 4.0),
                                              elevation: 0.0,
                                              borderColor: const Color(0xFFE0E0E0),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 20.0,
                                              labelPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                              elevation: 0.0,
                                              borderColor: const Color(0xFFE0E0E0),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            chipSpacing: 8.0,
                                            rowSpacing: 8.0,
                                            multiselect: false,
                                            initialized: _model
                                                    .choiceChipsClienteValue !=
                                                null,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .choiceChipsClienteValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [
                                                widget.selePagina == 1
                                                    ? 'Persona'
                                                    : 'Empresa'
                                              ],
                                            ),
                                            wrapped: true,
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (_model.choiceChipsClienteValue == 'Persona')
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 10.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Form(
                                      key: _model.formKey1,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 5.0, 16.0, 11.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Datos Personales',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            TextFormField(
                                              controller: _model
                                                  .textoNombresTextController,
                                              focusNode:
                                                  _model.textoNombresFocusNode,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nombres',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFE0E0E0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFF5F5F5),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              validator: _model
                                                  .textoNombresTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                            TextFormField(
                                              controller: _model
                                                  .textoApellidosTextController,
                                              focusNode: _model
                                                  .textoApellidosFocusNode,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Apellidos',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFE0E0E0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFF5F5F5),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              validator: _model
                                                  .textoApellidosTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                            TextFormField(
                                              controller:
                                                  _model.textoDNITextController,
                                              focusNode:
                                                  _model.textoDNIFocusNode,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'DNI',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFE0E0E0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFF5F5F5),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              maxLength: 8,
                                              validator: _model
                                                  .textoDNITextControllerValidator
                                                  .asValidator(context),
                                            ),
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .cmbSexoValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const [
                                                'Masculino',
                                                'Femenino'
                                              ],
                                              onChanged: (val) => safeSetState(
                                                  () => _model.cmbSexoValue =
                                                      val),
                                              width: 200.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Seleccione sexo',
                                              icon: Icon(
                                                Icons.person_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor: const Color(0xFFF5F5F5),
                                              elevation: 4.0,
                                              borderColor: const Color(0xFFE0E0E0),
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            if (FFAppState().mostrarErrorSexo ==
                                                'true')
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Seleccione una opción',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFFDA4F4F),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        lineHeight: 0.0,
                                                      ),
                                                ),
                                              ),
                                          ].divide(const SizedBox(height: 12.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (_model.choiceChipsClienteValue == 'Empresa')
                            Align(
                              alignment: const AlignmentDirectional(10.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Form(
                                      key: _model.formKey3,
                                      autovalidateMode:
                                          AutovalidateMode.disabled,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 5.0, 16.0, 11.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'Datos Empresariales',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            TextFormField(
                                              controller: _model
                                                  .textoRazonSocialTextController,
                                              focusNode: _model
                                                  .textoRazonSocialFocusNode,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Razón Social',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFE0E0E0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFF5F5F5),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              validator: _model
                                                  .textoRazonSocialTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                            TextFormField(
                                              controller:
                                                  _model.textoRUCTextController,
                                              focusNode:
                                                  _model.textoRUCFocusNode,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'RUC',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFE0E0E0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFF5F5F5),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              maxLength: 11,
                                              validator: _model
                                                  .textoRUCTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                            TextFormField(
                                              controller: _model
                                                  .textoRepresentanteTextController,
                                              focusNode: _model
                                                  .textoRepresentanteFocusNode,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Representante',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFE0E0E0),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFF5F5F5),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              validator: _model
                                                  .textoRepresentanteTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ].divide(const SizedBox(height: 12.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          Align(
                            alignment: const AlignmentDirectional(10.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Form(
                                    key: _model.formKey2,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 5.0, 16.0, 11.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Información de Contacto',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextFormField(
                                            controller: _model
                                                .textoDirecionTextController,
                                            focusNode:
                                                _model.textoDirecionFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Dirección',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE0E0E0),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFF5F5F5),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                            minLines: 1,
                                            validator: _model
                                                .textoDirecionTextControllerValidator
                                                .asValidator(context),
                                          ),
                                          TextFormField(
                                            controller: _model
                                                .textoTelefonoTextController,
                                            focusNode:
                                                _model.textoTelefonoFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Teléfono',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE0E0E0),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFF5F5F5),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                            minLines: 1,
                                            keyboardType: TextInputType.phone,
                                            validator: _model
                                                .textoTelefonoTextControllerValidator
                                                .asValidator(context),
                                          ),
                                          TextFormField(
                                            controller: _model
                                                .textoCorreoTextController,
                                            focusNode:
                                                _model.textoCorreoFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Correo Electrónico',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE0E0E0),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFF5F5F5),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                            minLines: 1,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .textoCorreoTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ].divide(const SizedBox(height: 12.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (_model.choiceChipsClienteValue ==
                                              'Persona') {
                                            if (_model.formKey1.currentState ==
                                                    null ||
                                                !_model.formKey1.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            if (_model.cmbSexoValue == null ||
                                                _model.cmbSexoValue == '') {
                                              FFAppState().mostrarErrorSexo =
                                                  'true';
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().mostrarErrorSexo =
                                                  'false';
                                              safeSetState(() {});
                                            }

                                            if (_model.formKey2.currentState ==
                                                    null ||
                                                !_model.formKey2.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            _model.dniResulCliePersona =
                                                await ClientePersonaTable()
                                                    .queryRows(
                                              queryFn: (q) => q.eqOrNull(
                                                'dni',
                                                _model.textoDNITextController
                                                    .text,
                                              ),
                                            );
                                            if ((_model.dniResulCliePersona !=
                                                        null &&
                                                    (_model.dniResulCliePersona)!
                                                        .isNotEmpty) ==
                                                true) {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    content: const Text(
                                                        'El cliente con el DNI ingresado ya existe'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text('Aceptar'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            } else {
                                              _model.clienteIdPerso =
                                                  await ClienteTable().insert({
                                                'correo': _model
                                                    .textoCorreoTextController
                                                    .text,
                                                'telefono': _model
                                                    .textoTelefonoTextController
                                                    .text,
                                                'direccion': _model
                                                    .textoDirecionTextController
                                                    .text,
                                                'estado': 'Activo',
                                                'id_tipo_cliente':
                                                    _model.choiceChipsClienteValue ==
                                                            'Persona'
                                                        ? 1
                                                        : 2,
                                              });
                                              await ClientePersonaTable()
                                                  .insert({
                                                'id_cliente_persona': _model
                                                    .clienteIdPerso?.idCliente,
                                                'apellido': _model
                                                    .textoApellidosTextController
                                                    .text,
                                                'nombre': _model
                                                    .textoNombresTextController
                                                    .text,
                                                'sexo': _model.cmbSexoValue,
                                                'dni': _model
                                                    .textoDNITextController
                                                    .text,
                                              });
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    content: const Text(
                                                        'Cliente registrado exitosamente'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text('Aceptar'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              safeSetState(() {
                                                _model
                                                    .textoNombresTextController
                                                    ?.clear();
                                                _model
                                                    .textoApellidosTextController
                                                    ?.clear();
                                                _model.textoDNITextController
                                                    ?.clear();
                                                _model
                                                    .textoRazonSocialTextController
                                                    ?.clear();
                                                _model.textoRUCTextController
                                                    ?.clear();
                                                _model
                                                    .textoRepresentanteTextController
                                                    ?.clear();
                                                _model
                                                    .textoTelefonoTextController
                                                    ?.clear();
                                                _model
                                                    .textoDirecionTextController
                                                    ?.clear();
                                                _model.textoCorreoTextController
                                                    ?.clear();
                                              });
                                              safeSetState(() {
                                                _model
                                                    .textoNombresTextController
                                                    ?.clear();
                                                _model
                                                    .textoApellidosTextController
                                                    ?.clear();
                                                _model.textoDNITextController
                                                    ?.clear();
                                                _model
                                                    .textoRazonSocialTextController
                                                    ?.clear();
                                                _model.textoRUCTextController
                                                    ?.clear();
                                                _model
                                                    .textoRepresentanteTextController
                                                    ?.clear();
                                                _model
                                                    .textoTelefonoTextController
                                                    ?.clear();
                                                _model
                                                    .textoDirecionTextController
                                                    ?.clear();
                                                _model.textoCorreoTextController
                                                    ?.clear();
                                              });
                                              safeSetState(() {
                                                _model
                                                    .textoNombresTextController
                                                    ?.clear();
                                                _model
                                                    .textoApellidosTextController
                                                    ?.clear();
                                                _model.textoDNITextController
                                                    ?.clear();
                                                _model
                                                    .textoRazonSocialTextController
                                                    ?.clear();
                                                _model.textoRUCTextController
                                                    ?.clear();
                                                _model
                                                    .textoRepresentanteTextController
                                                    ?.clear();
                                                _model
                                                    .textoTelefonoTextController
                                                    ?.clear();
                                                _model
                                                    .textoDirecionTextController
                                                    ?.clear();
                                                _model.textoCorreoTextController
                                                    ?.clear();
                                              });
                                            }
                                          } else {
                                            if (_model.formKey3.currentState ==
                                                    null ||
                                                !_model.formKey3.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            if (_model.formKey2.currentState ==
                                                    null ||
                                                !_model.formKey2.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            _model.dniResulClieEmpresa =
                                                await ClienteEmpresaTable()
                                                    .queryRows(
                                              queryFn: (q) => q.eqOrNull(
                                                'ruc',
                                                _model.textoRUCTextController
                                                    .text,
                                              ),
                                            );
                                            if ((_model.dniResulClieEmpresa !=
                                                        null &&
                                                    (_model.dniResulClieEmpresa)!
                                                        .isNotEmpty) ==
                                                true) {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    content: const Text(
                                                        'El cliente con el RUC  ingresado ya existe'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text('Aceptar'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            } else {
                                              _model.clienteIdEmpre =
                                                  await ClienteTable().insert({
                                                'correo': _model
                                                    .textoCorreoTextController
                                                    .text,
                                                'telefono': _model
                                                    .textoTelefonoTextController
                                                    .text,
                                                'direccion': _model
                                                    .textoDirecionTextController
                                                    .text,
                                                'estado': 'Activo',
                                                'id_tipo_cliente':
                                                    _model.choiceChipsClienteValue ==
                                                            'Persona'
                                                        ? 1
                                                        : 2,
                                              });
                                              await ClienteEmpresaTable()
                                                  .insert({
                                                'id_cliente_empresa': _model
                                                    .clienteIdEmpre?.idCliente,
                                                'razon_social': _model
                                                    .textoRazonSocialTextController
                                                    .text,
                                                'ruc': _model
                                                    .textoRUCTextController
                                                    .text,
                                                'representante': _model
                                                    .textoRepresentanteTextController
                                                    .text,
                                              });
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    content: const Text(
                                                        'Cliente registrado exitosamente'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text('Aceptar'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              safeSetState(() {
                                                _model
                                                    .textoNombresTextController
                                                    ?.clear();
                                                _model
                                                    .textoApellidosTextController
                                                    ?.clear();
                                                _model.textoDNITextController
                                                    ?.clear();
                                                _model
                                                    .textoRazonSocialTextController
                                                    ?.clear();
                                                _model.textoRUCTextController
                                                    ?.clear();
                                                _model
                                                    .textoRepresentanteTextController
                                                    ?.clear();
                                                _model
                                                    .textoTelefonoTextController
                                                    ?.clear();
                                                _model
                                                    .textoDirecionTextController
                                                    ?.clear();
                                                _model.textoCorreoTextController
                                                    ?.clear();
                                              });
                                              safeSetState(() {
                                                _model
                                                    .textoNombresTextController
                                                    ?.clear();
                                                _model
                                                    .textoApellidosTextController
                                                    ?.clear();
                                                _model.textoDNITextController
                                                    ?.clear();
                                                _model
                                                    .textoRazonSocialTextController
                                                    ?.clear();
                                                _model.textoRUCTextController
                                                    ?.clear();
                                                _model
                                                    .textoRepresentanteTextController
                                                    ?.clear();
                                                _model
                                                    .textoTelefonoTextController
                                                    ?.clear();
                                                _model
                                                    .textoDirecionTextController
                                                    ?.clear();
                                                _model.textoCorreoTextController
                                                    ?.clear();
                                              });
                                              safeSetState(() {
                                                _model
                                                    .textoNombresTextController
                                                    ?.clear();
                                                _model
                                                    .textoApellidosTextController
                                                    ?.clear();
                                                _model.textoDNITextController
                                                    ?.clear();
                                                _model
                                                    .textoRazonSocialTextController
                                                    ?.clear();
                                                _model.textoRUCTextController
                                                    ?.clear();
                                                _model
                                                    .textoRepresentanteTextController
                                                    ?.clear();
                                                _model
                                                    .textoTelefonoTextController
                                                    ?.clear();
                                                _model
                                                    .textoDirecionTextController
                                                    ?.clear();
                                                _model.textoCorreoTextController
                                                    ?.clear();
                                              });
                                            }
                                          }

                                          safeSetState(() {});
                                        },
                                        text: 'Registrar',
                                        icon: const Icon(
                                          Icons.how_to_reg,
                                          size: 25.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 50.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF1147B2),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      safeSetState(() {
                                        _model.textoNombresTextController
                                            ?.clear();
                                        _model.textoApellidosTextController
                                            ?.clear();
                                        _model.textoDNITextController?.clear();
                                        _model.textoRazonSocialTextController
                                            ?.clear();
                                        _model.textoRUCTextController?.clear();
                                        _model.textoRepresentanteTextController
                                            ?.clear();
                                        _model.textoTelefonoTextController
                                            ?.clear();
                                        _model.textoDirecionTextController
                                            ?.clear();
                                        _model.textoCorreoTextController
                                            ?.clear();
                                      });
                                      safeSetState(() {
                                        _model.cmbSexoValueController?.reset();
                                      });
                                      safeSetState(() {
                                        _model.choiceChipsClienteValueController
                                            ?.value = [
                                          (widget.selePagina == 1
                                              ? 'Persona'
                                              : 'Empresa')
                                        ];
                                      });
                                    },
                                    text: 'Limpiar',
                                    icon: Icon(
                                      Icons.clear_all,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 120.0,
                                      height: 50.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFFDF1313),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
