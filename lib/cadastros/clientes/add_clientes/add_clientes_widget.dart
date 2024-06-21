import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/botoes/bt_geral/bt_geral_widget.dart';
import '/botoes/bt_geral_maior/bt_geral_maior_widget.dart';
import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/cadastros/clientes/dependentes/add_dependentes/add_dependentes_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'add_clientes_model.dart';
export 'add_clientes_model.dart';

class AddClientesWidget extends StatefulWidget {
  const AddClientesWidget({
    super.key,
    required this.parte1,
    required this.parte2,
    required this.company,
    required this.user,
    bool? novo,
  }) : novo = novo ?? false;

  final bool? parte1;
  final bool? parte2;
  final EmpresaRow? company;
  final UsuariosRow? user;
  final bool novo;

  @override
  State<AddClientesWidget> createState() => _AddClientesWidgetState();
}

class _AddClientesWidgetState extends State<AddClientesWidget>
    with TickerProviderStateMixin {
  late AddClientesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddClientesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.tipoPessoa = _model.radioButtonValue;
      setState(() {});
      _model.varParte1 = widget.parte1;
      _model.varParte2 = widget.parte2;
      setState(() {});
    });

    _model.switchValue = _model.ativoSN!;
    _model.nomeTextController ??= TextEditingController();
    _model.nomeFocusNode ??= FocusNode();

    _model.fantasiaTextController ??= TextEditingController();
    _model.fantasiaFocusNode ??= FocusNode();

    _model.contatoTextController ??= TextEditingController();
    _model.contatoFocusNode ??= FocusNode();

    _model.enderecoTextController ??= TextEditingController();
    _model.enderecoFocusNode ??= FocusNode();

    _model.numeroTextController ??= TextEditingController();
    _model.numeroFocusNode ??= FocusNode();

    _model.bairroTextController ??= TextEditingController();
    _model.bairroFocusNode ??= FocusNode();

    _model.complementoTextController ??= TextEditingController();
    _model.complementoFocusNode ??= FocusNode();

    _model.cepTextController ??= TextEditingController();
    _model.cepFocusNode ??= FocusNode();

    _model.whatsAppTextController ??= TextEditingController();
    _model.whatsAppFocusNode ??= FocusNode();

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.nascimentoTextController ??= TextEditingController();
    _model.nascimentoFocusNode ??= FocusNode();

    _model.cpfTextController ??= TextEditingController();
    _model.cpfFocusNode ??= FocusNode();

    _model.rgTextController ??= TextEditingController();
    _model.rgFocusNode ??= FocusNode();

    _model.cnpjTextController ??= TextEditingController();
    _model.cnpjFocusNode ??= FocusNode();

    _model.ieTextController ??= TextEditingController();
    _model.ieFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.paiTextController ??= TextEditingController();
    _model.paiFocusNode ??= FocusNode();

    _model.maeTextController ??= TextEditingController();
    _model.maeFocusNode ??= FocusNode();

    _model.conjugueTextController ??= TextEditingController();
    _model.conjugueFocusNode ??= FocusNode();

    _model.telefoneTextController ??= TextEditingController();
    _model.telefoneFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                width: 929.0,
                height: 729.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFD0D2D4),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).megapreto,
                    width: 2.0,
                  ),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 15.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dados do Cliente',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .megapreto,
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.close_sharp,
                                  color: FlutterFlowTheme.of(context).megapreto,
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.varParte1 ?? true)
                                  Flexible(
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 1340),
                                      curve: Curves.easeInOut,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 0.0, 4.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 68.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Switch.adaptive(
                                                          value: _model
                                                              .switchValue!,
                                                          onChanged:
                                                              (newValue) async {
                                                            setState(() => _model
                                                                    .switchValue =
                                                                newValue);
                                                            if (newValue) {
                                                              _model.ativoSN =
                                                                  valueOrDefault<
                                                                      bool>(
                                                                _model.switchValue!
                                                                    ? true
                                                                    : false,
                                                                true,
                                                              );
                                                              setState(() {});
                                                            }
                                                          },
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          activeTrackColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent1,
                                                          inactiveTrackColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .tertiary,
                                                          inactiveThumbColor:
                                                              const Color(0xFFF40303),
                                                        ),
                                                        if (_model
                                                                .switchValue ??
                                                            true)
                                                          Text(
                                                            'Ativo',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        if (!_model
                                                            .switchValue!)
                                                          Text(
                                                            'Cancelado',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowRadioButton(
                                                        options: [
                                                          'Física',
                                                          'Jurídica'
                                                        ].toList(),
                                                        onChanged: (val) async {
                                                          setState(() {});
                                                          if (widget.novo ==
                                                              true) {
                                                            _model.tipoPessoa =
                                                                _model
                                                                    .radioButtonValue;
                                                            setState(() {});
                                                          }
                                                        },
                                                        controller: _model
                                                                .radioButtonValueController ??=
                                                            FormFieldController<
                                                                    String>(
                                                                _model
                                                                    .tipoPessoa!),
                                                        optionHeight: 32.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        selectedTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        buttonPosition:
                                                            RadioButtonPosition
                                                                .left,
                                                        direction:
                                                            Axis.vertical,
                                                        radioButtonColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        inactiveRadioButtonColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        toggleable: false,
                                                        horizontalAlignment:
                                                            WrapAlignment.start,
                                                        verticalAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        final selectedMedia =
                                                            await selectMediaWithSourceBottomSheet(
                                                          context: context,
                                                          allowPhoto: true,
                                                        );
                                                        if (selectedMedia !=
                                                                null &&
                                                            selectedMedia.every((m) =>
                                                                validateFileFormat(
                                                                    m.storagePath,
                                                                    context))) {
                                                          setState(() => _model
                                                                  .isDataUploading =
                                                              true);
                                                          var selectedUploadedFiles =
                                                              <FFUploadedFile>[];

                                                          try {
                                                            selectedUploadedFiles =
                                                                selectedMedia
                                                                    .map((m) =>
                                                                        FFUploadedFile(
                                                                          name: m
                                                                              .storagePath
                                                                              .split('/')
                                                                              .last,
                                                                          bytes:
                                                                              m.bytes,
                                                                          height: m
                                                                              .dimensions
                                                                              ?.height,
                                                                          width: m
                                                                              .dimensions
                                                                              ?.width,
                                                                          blurHash:
                                                                              m.blurHash,
                                                                        ))
                                                                    .toList();
                                                          } finally {
                                                            _model.isDataUploading =
                                                                false;
                                                          }
                                                          if (selectedUploadedFiles
                                                                  .length ==
                                                              selectedMedia
                                                                  .length) {
                                                            setState(() {
                                                              _model.uploadedLocalFile =
                                                                  selectedUploadedFiles
                                                                      .first;
                                                            });
                                                          } else {
                                                            setState(() {});
                                                            return;
                                                          }
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if ((_model
                                                                        .uploadedLocalFile
                                                                        .bytes
                                                                        ?.isNotEmpty ??
                                                                    false))
                                                              FutureBuilder<
                                                                  List<
                                                                      ClientesRow>>(
                                                                future: ClientesTable()
                                                                    .querySingleRow(
                                                                  queryFn:
                                                                      (q) => q,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ClientesRow>
                                                                      circleImageClientesRowList =
                                                                      snapshot
                                                                          .data!;
                                                                  final circleImageClientesRow = circleImageClientesRowList
                                                                          .isNotEmpty
                                                                      ? circleImageClientesRowList
                                                                          .first
                                                                      : null;
                                                                  return Container(
                                                                    width: 70.0,
                                                                    height:
                                                                        70.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .memory(
                                                                      _model.uploadedLocalFile
                                                                              .bytes ??
                                                                          Uint8List.fromList(
                                                                              []),
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            if ((_model
                                                                        .uploadedLocalFile
                                                                        .bytes
                                                                        ?.isEmpty ??
                                                                    true))
                                                              FutureBuilder<
                                                                  List<
                                                                      ClientesRow>>(
                                                                future: ClientesTable()
                                                                    .querySingleRow(
                                                                  queryFn:
                                                                      (q) => q,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ClientesRow>
                                                                      circleImageClientesRowList =
                                                                      snapshot
                                                                          .data!;
                                                                  final circleImageClientesRow = circleImageClientesRowList
                                                                          .isNotEmpty
                                                                      ? circleImageClientesRowList
                                                                          .first
                                                                      : null;
                                                                  return Container(
                                                                    width: 70.0,
                                                                    height:
                                                                        70.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        circleImageClientesRow
                                                                            ?.localfoto,
                                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/s1x9dow59531/usuarios2.png',
                                                                      ),
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius: 12.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 40.0,
                                                        fillColor: () {
                                                          if (FFAppState()
                                                                  .alteraLayout ==
                                                              1) {
                                                            return const Color(
                                                                0x47DC3C00);
                                                          } else if (FFAppState()
                                                                  .alteraLayout ==
                                                              2) {
                                                            return const Color(
                                                                0x55094AB2);
                                                          } else if (FFAppState()
                                                                  .alteraLayout ==
                                                              3) {
                                                            return const Color(
                                                                0x47070707);
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .megapreto;
                                                          }
                                                        }(),
                                                        icon: Icon(
                                                          Icons.arrow_right,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          _model.varParte2 =
                                                              true;
                                                          setState(() {});
                                                          _model.varParte1 =
                                                              false;
                                                          setState(() {});
                                                        },
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 8.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 524.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .nomeTextController,
                                                                focusNode: _model
                                                                    .nomeFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.nomeTextController',
                                                                  const Duration(
                                                                      milliseconds:
                                                                          0),
                                                                  () async {
                                                                    if (_model.nomeTextController.text !=
                                                                            '') {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        0,
                                                                        (_) =>
                                                                            0.05,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                      setState(
                                                                          () {
                                                                        _model.nomeTextController?.text = functions.toUpperCase(_model
                                                                            .nomeTextController
                                                                            .text)!;
                                                                        _model
                                                                            .nomeTextController
                                                                            ?.selection = TextSelection.collapsed(offset: _model.nomeTextController!.text.length);
                                                                      });
                                                                    } else {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        0,
                                                                        (_) =>
                                                                            0.0,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Nome',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megabranco,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FFAppState().alteraLayout == 1
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .cabeca1
                                                                          : FlutterFlowTheme.of(context)
                                                                              .cabeca2,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .megabranco,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .megapreto,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                validator: _model
                                                                    .nomeTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      if (valueOrDefault<bool>(
                                                        _model.tipoPessoa ==
                                                                'Jurídica'
                                                            ? true
                                                            : false,
                                                        false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  4.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .fantasiaTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .fantasiaFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.fantasiaTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              0),
                                                                      () async {
                                                                        if (_model.fantasiaTextController.text !=
                                                                                '') {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            1,
                                                                            (_) =>
                                                                                0.05,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                          setState(
                                                                              () {
                                                                            _model.fantasiaTextController?.text =
                                                                                functions.toUpperCase(_model.fantasiaTextController.text)!;
                                                                            _model.fantasiaTextController?.selection =
                                                                                TextSelection.collapsed(offset: _model.fantasiaTextController!.text.length);
                                                                          });
                                                                        } else {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            1,
                                                                            (_) =>
                                                                                0.0,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          'Nome Fantasia',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megapreto,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: FFAppState().alteraLayout == 1
                                                                              ? FlutterFlowTheme.of(context).cabeca1
                                                                              : FlutterFlowTheme.of(context).cabeca2,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0xFFFF0004),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0xFFFF0004),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .megabranco,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    validator: _model
                                                                        .fantasiaTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .contatoTextController,
                                                                  focusNode: _model
                                                                      .contatoFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.contatoTextController',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            0),
                                                                    () async {
                                                                      if (_model.contatoTextController.text !=
                                                                              '') {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          2,
                                                                          (_) =>
                                                                              0.05,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                        setState(
                                                                            () {
                                                                          _model
                                                                              .contatoTextController
                                                                              ?.text = functions.toUpperCase(_model.contatoTextController.text)!;
                                                                          _model
                                                                              .contatoTextController
                                                                              ?.selection = TextSelection.collapsed(offset: _model.contatoTextController!.text.length);
                                                                        });
                                                                      } else {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          2,
                                                                          (_) =>
                                                                              0.0,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Contato',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FFAppState().alteraLayout ==
                                                                                1
                                                                            ? FlutterFlowTheme.of(context).cabeca1
                                                                            : FlutterFlowTheme.of(context).cabeca2,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .megabranco,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  validator: _model
                                                                      .contatoTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 10,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .enderecoTextController,
                                                                  focusNode: _model
                                                                      .enderecoFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.enderecoTextController',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            0),
                                                                    () async {
                                                                      if (_model.enderecoTextController.text !=
                                                                              '') {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          3,
                                                                          (_) =>
                                                                              0.05,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                        setState(
                                                                            () {
                                                                          _model
                                                                              .enderecoTextController
                                                                              ?.text = functions.toUpperCase(_model.enderecoTextController.text)!;
                                                                          _model
                                                                              .enderecoTextController
                                                                              ?.selection = TextSelection.collapsed(offset: _model.enderecoTextController!.text.length);
                                                                        });
                                                                      } else {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          3,
                                                                          (_) =>
                                                                              0.0,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Endereço',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FFAppState().alteraLayout ==
                                                                                1
                                                                            ? FlutterFlowTheme.of(context).cabeca1
                                                                            : FlutterFlowTheme.of(context).cabeca2,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .megabranco,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  validator: _model
                                                                      .enderecoTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 3,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .numeroTextController,
                                                                focusNode: _model
                                                                    .numeroFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.numeroTextController',
                                                                  const Duration(
                                                                      milliseconds:
                                                                          0),
                                                                  () async {
                                                                    if (_model.numeroTextController.text !=
                                                                            '') {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        4,
                                                                        (_) =>
                                                                            0.05,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                      setState(
                                                                          () {
                                                                        _model.nomeTextController?.text = functions.toUpperCase(_model
                                                                            .numeroTextController
                                                                            .text)!;
                                                                        _model
                                                                            .nomeTextController
                                                                            ?.selection = TextSelection.collapsed(offset: _model.nomeTextController!.text.length);
                                                                      });
                                                                    } else {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        4,
                                                                        (_) =>
                                                                            0.0,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Nº',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megabranco,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FFAppState().alteraLayout == 1
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .cabeca1
                                                                          : FlutterFlowTheme.of(context)
                                                                              .cabeca2,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .megabranco,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .megapreto,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                validator: _model
                                                                    .numeroTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .bairroTextController,
                                                                focusNode: _model
                                                                    .bairroFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.bairroTextController',
                                                                  const Duration(
                                                                      milliseconds:
                                                                          0),
                                                                  () async {
                                                                    if (_model.bairroTextController.text !=
                                                                            '') {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        5,
                                                                        (_) =>
                                                                            0.05,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                      setState(
                                                                          () {
                                                                        _model.bairroTextController?.text = functions.toUpperCase(_model
                                                                            .bairroTextController
                                                                            .text)!;
                                                                        _model
                                                                            .bairroTextController
                                                                            ?.selection = TextSelection.collapsed(offset: _model.bairroTextController!.text.length);
                                                                      });
                                                                    } else {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        5,
                                                                        (_) =>
                                                                            0.0,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Bairro',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megabranco,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FFAppState().alteraLayout == 1
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .cabeca1
                                                                          : FlutterFlowTheme.of(context)
                                                                              .cabeca2,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .megabranco,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .megapreto,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                validator: _model
                                                                    .bairroTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 2,
                                                              child: FutureBuilder<
                                                                  List<
                                                                      TBUFsRow>>(
                                                                future:
                                                                    TBUFsTable()
                                                                        .queryRows(
                                                                  queryFn: (q) => q.order(
                                                                      'CODIGO',
                                                                      ascending:
                                                                          true),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TBUFsRow>
                                                                      ufTBUFsRowList =
                                                                      snapshot
                                                                          .data!;
                                                                  return FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                        .ufValueController ??= FormFieldController<
                                                                            String>(
                                                                        null),
                                                                    options: ufTBUFsRowList
                                                                        .map((e) => valueOrDefault<String>(
                                                                              e.codigo,
                                                                              '-',
                                                                            ))
                                                                        .toList(),
                                                                    onChanged:
                                                                        (val) async {
                                                                      setState(() =>
                                                                          _model.ufValue =
                                                                              val);
                                                                      if (_model.ufValue !=
                                                                              null &&
                                                                          _model.ufValue !=
                                                                              '') {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          6,
                                                                          (_) =>
                                                                              0.05,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      } else {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          6,
                                                                          (_) =>
                                                                              0.0,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        56.0,
                                                                    maxHeight:
                                                                        300.0,
                                                                    searchHintTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    searchTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText:
                                                                        'UF',
                                                                    searchHintText:
                                                                        'Digite UF',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .arrow_drop_down_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          30.0,
                                                                    ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        2.0,
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    borderWidth:
                                                                        2.0,
                                                                    borderRadius:
                                                                        12.0,
                                                                    margin: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isOverButton:
                                                                        true,
                                                                    isSearchable:
                                                                        true,
                                                                    isMultiSelect:
                                                                        false,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 6,
                                                              child: FutureBuilder<
                                                                  List<
                                                                      TbcidadesRow>>(
                                                                future:
                                                                    TbcidadesTable()
                                                                        .queryRows(
                                                                  queryFn:
                                                                      (q) => q
                                                                          .eq(
                                                                            'UF',
                                                                            _model.ufValue,
                                                                          )
                                                                          .order(
                                                                              'CIDADE',
                                                                              ascending: true),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TbcidadesRow>
                                                                      cidadeTbcidadesRowList =
                                                                      snapshot
                                                                          .data!;
                                                                  return FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                        .cidadeValueController ??= FormFieldController<
                                                                            String>(
                                                                        null),
                                                                    options: cidadeTbcidadesRowList
                                                                        .map((e) =>
                                                                            e.cidade)
                                                                        .withoutNulls
                                                                        .toList(),
                                                                    onChanged:
                                                                        (val) async {
                                                                      setState(() =>
                                                                          _model.cidadeValue =
                                                                              val);
                                                                      if (_model.cidadeValue !=
                                                                              null &&
                                                                          _model.cidadeValue !=
                                                                              '') {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          7,
                                                                          (_) =>
                                                                              0.05,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      } else {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          7,
                                                                          (_) =>
                                                                              0.0,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        56.0,
                                                                    maxHeight:
                                                                        300.0,
                                                                    searchHintTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    searchTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText:
                                                                        'Cidade',
                                                                    searchHintText:
                                                                        'Digite a Cidade',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .arrow_drop_down_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          30.0,
                                                                    ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        2.0,
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    borderWidth:
                                                                        2.0,
                                                                    borderRadius:
                                                                        12.0,
                                                                    margin: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isOverButton:
                                                                        true,
                                                                    isSearchable:
                                                                        true,
                                                                    isMultiSelect:
                                                                        false,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 8,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .complementoTextController,
                                                                  focusNode: _model
                                                                      .complementoFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.complementoTextController',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            0),
                                                                    () async {
                                                                      if (_model.complementoTextController.text !=
                                                                              '') {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          8,
                                                                          (_) =>
                                                                              0.05,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                        setState(
                                                                            () {
                                                                          _model
                                                                              .complementoTextController
                                                                              ?.text = functions.toUpperCase(_model.complementoTextController.text)!;
                                                                          _model
                                                                              .complementoTextController
                                                                              ?.selection = TextSelection.collapsed(offset: _model.complementoTextController!.text.length);
                                                                        });
                                                                      } else {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          8,
                                                                          (_) =>
                                                                              0.0,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Complemento',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FFAppState().alteraLayout ==
                                                                                1
                                                                            ? FlutterFlowTheme.of(context).cabeca1
                                                                            : FlutterFlowTheme.of(context).cabeca2,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .megabranco,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  validator: _model
                                                                      .complementoTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 5,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .cepTextController,
                                                                focusNode: _model
                                                                    .cepFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.cepTextController',
                                                                  const Duration(
                                                                      milliseconds:
                                                                          0),
                                                                  () async {
                                                                    if (_model.cepTextController.text !=
                                                                            '') {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        9,
                                                                        (_) =>
                                                                            0.05,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    } else {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        9,
                                                                        (_) =>
                                                                            0.0,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'CEP',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megabranco,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FFAppState().alteraLayout == 1
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .cabeca1
                                                                          : FlutterFlowTheme.of(context)
                                                                              .cabeca2,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .megabranco,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .megapreto,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                validator: _model
                                                                    .cepTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                                inputFormatters: [
                                                                  _model.cepMask
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .whatsAppTextController,
                                                                focusNode: _model
                                                                    .whatsAppFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.whatsAppTextController',
                                                                  const Duration(
                                                                      milliseconds:
                                                                          0),
                                                                  () async {
                                                                    if (_model.whatsAppTextController.text !=
                                                                            '') {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        10,
                                                                        (_) =>
                                                                            0.05,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    } else {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        10,
                                                                        (_) =>
                                                                            0.0,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'WhatsApp',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megabranco,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FFAppState().alteraLayout == 1
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .cabeca1
                                                                          : FlutterFlowTheme.of(context)
                                                                              .cabeca2,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .megabranco,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .megapreto,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                validator: _model
                                                                    .whatsAppTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                                inputFormatters: [
                                                                  _model
                                                                      .whatsAppMask
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .emailTextController,
                                                                focusNode: _model
                                                                    .emailFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.emailTextController',
                                                                  const Duration(
                                                                      milliseconds:
                                                                          0),
                                                                  () async {
                                                                    if (_model.emailTextController.text !=
                                                                            '') {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        10,
                                                                        (_) =>
                                                                            0.05,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                      setState(
                                                                          () {
                                                                        _model.emailTextController?.text = functions.toLowerCase(_model
                                                                            .emailTextController
                                                                            .text)!;
                                                                        _model
                                                                            .emailTextController
                                                                            ?.selection = TextSelection.collapsed(offset: _model.emailTextController!.text.length);
                                                                      });
                                                                    } else {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        10,
                                                                        (_) =>
                                                                            0.0,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                ),
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'E-mail',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megabranco,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FFAppState().alteraLayout == 1
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .cabeca1
                                                                          : FlutterFlowTheme.of(context)
                                                                              .cabeca2,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Color(
                                                                          0xFFFF0004),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .megabranco,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .megapreto,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                validator: _model
                                                                    .emailTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      if (valueOrDefault<bool>(
                                                        _model.tipoPessoa ==
                                                                'Física'
                                                            ? true
                                                            : false,
                                                        false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  4.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .nascimentoTextController,
                                                                  focusNode: _model
                                                                      .nascimentoFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.nascimentoTextController',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            0),
                                                                    () async {
                                                                      if (_model.nascimentoTextController.text !=
                                                                              '') {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          11,
                                                                          (_) =>
                                                                              0.05,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      } else {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          11,
                                                                          (_) =>
                                                                              0.0,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Nascimento',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FFAppState().alteraLayout ==
                                                                                1
                                                                            ? FlutterFlowTheme.of(context).cabeca1
                                                                            : FlutterFlowTheme.of(context).cabeca2,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .megabranco,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .datetime,
                                                                  validator: _model
                                                                      .nascimentoTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                  inputFormatters: [
                                                                    _model
                                                                        .nascimentoMask
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (valueOrDefault<bool>(
                                                        _model.tipoPessoa ==
                                                                'Física'
                                                            ? true
                                                            : false,
                                                        false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  4.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .cpfTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .cpfFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.cpfTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        if (_model.cpfTextController.text !=
                                                                                '') {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            12,
                                                                            (_) =>
                                                                                0.05,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        } else {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            12,
                                                                            (_) =>
                                                                                0.0,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          'CPF',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megapreto,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: FFAppState().alteraLayout == 1
                                                                              ? FlutterFlowTheme.of(context).cabeca1
                                                                              : FlutterFlowTheme.of(context).cabeca2,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0xFFFF0004),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0xFFFF0004),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .megabranco,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .number,
                                                                    validator: _model
                                                                        .cpfTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                    inputFormatters: [
                                                                      _model
                                                                          .cpfMask
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .rgTextController,
                                                                  focusNode: _model
                                                                      .rgFocusNode,
                                                                  onFieldSubmitted:
                                                                      (_) async {
                                                                    if (_model.rgTextController.text !=
                                                                            '') {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        13,
                                                                        (_) =>
                                                                            0.05,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    } else {
                                                                      _model
                                                                          .updateSomaAtIndex(
                                                                        13,
                                                                        (_) =>
                                                                            0.0,
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'RG',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FFAppState().alteraLayout ==
                                                                                1
                                                                            ? FlutterFlowTheme.of(context).cabeca1
                                                                            : FlutterFlowTheme.of(context).cabeca2,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .megabranco,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  validator: _model
                                                                      .rgTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (valueOrDefault<bool>(
                                                        _model.tipoPessoa ==
                                                                'Pessoa Jurídica'
                                                            ? true
                                                            : false,
                                                        false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  4.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .cnpjTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .cnpjFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.cnpjTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        if (_model.cnpjTextController.text !=
                                                                                '') {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            14,
                                                                            (_) =>
                                                                                0.05,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        } else {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            14,
                                                                            (_) =>
                                                                                0.0,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          'CNPJ',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megapreto,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color: FFAppState().alteraLayout == 1
                                                                              ? FlutterFlowTheme.of(context).cabeca1
                                                                              : FlutterFlowTheme.of(context).cabeca2,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0xFFFF0004),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0xFFFF0004),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .megabranco,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .number,
                                                                    validator: _model
                                                                        .cnpjTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                    inputFormatters: [
                                                                      _model
                                                                          .cnpjMask
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .ieTextController,
                                                                  focusNode: _model
                                                                      .ieFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.ieTextController',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () async {
                                                                      if (_model.ieTextController.text !=
                                                                              '') {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          15,
                                                                          (_) =>
                                                                              0.05,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      } else {
                                                                        _model
                                                                            .updateSomaAtIndex(
                                                                          15,
                                                                          (_) =>
                                                                              0.0,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'I. E.',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megapreto,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FFAppState().alteraLayout ==
                                                                                1
                                                                            ? FlutterFlowTheme.of(context).cabeca1
                                                                            : FlutterFlowTheme.of(context).cabeca2,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0xFFFF0004),
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .megabranco,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .megapreto,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  validator: _model
                                                                      .ieTextControllerValidator
                                                                      .asValidator(
                                                                          context),
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
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (_model.varParte2 ?? true)
                                  Expanded(
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 1660),
                                      curve: Curves.easeInOut,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 4.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 68.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius: 12.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 40.0,
                                                        fillColor: () {
                                                          if (FFAppState()
                                                                  .alteraLayout ==
                                                              1) {
                                                            return const Color(
                                                                0x47DC3C00);
                                                          } else if (FFAppState()
                                                                  .alteraLayout ==
                                                              2) {
                                                            return const Color(
                                                                0x55094AB2);
                                                          } else if (FFAppState()
                                                                  .alteraLayout ==
                                                              3) {
                                                            return const Color(
                                                                0x47070707);
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .megapreto;
                                                          }
                                                        }(),
                                                        icon: Icon(
                                                          Icons.arrow_left,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          _model.varParte2 =
                                                              false;
                                                          setState(() {});
                                                          _model.varParte1 =
                                                              true;
                                                          setState(() {});
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  flex: 3,
                                                                  child: Text(
                                                                    _model.nomeTextController.text,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  flex: 3,
                                                                  child: Text(
                                                                    '${_model.cidadeValue}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const Alignment(0.0, 0),
                                                    child:
                                                        FlutterFlowButtonTabBar(
                                                      useToggleButtonStyle:
                                                          true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      unselectedLabelStyle:
                                                          const TextStyle(),
                                                      labelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .megapreto,
                                                      unselectedLabelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .megabranco,
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .corpoDoSistema,
                                                      unselectedBackgroundColor:
                                                          () {
                                                        if (FFAppState()
                                                                .alteraLayout ==
                                                            1) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .cabeca1;
                                                        } else if (FFAppState()
                                                                .alteraLayout ==
                                                            2) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .cabeca2;
                                                        } else if (FFAppState()
                                                                .alteraLayout ==
                                                            3) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .megapreto;
                                                        } else {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .megapreto;
                                                        }
                                                      }(),
                                                      borderColor: () {
                                                        if (FFAppState()
                                                                .alteraLayout ==
                                                            1) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .cabeca1;
                                                        } else if (FFAppState()
                                                                .alteraLayout ==
                                                            2) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .cabeca2;
                                                        } else if (FFAppState()
                                                                .alteraLayout ==
                                                            3) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .megapreto;
                                                        } else {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .megapreto;
                                                        }
                                                      }(),
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      elevation: 10.0,
                                                      buttonMargin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      padding:
                                                          const EdgeInsets.all(12.0),
                                                      tabs: const [
                                                        Tab(
                                                          text:
                                                              'Inf Adicionais',
                                                        ),
                                                        Tab(
                                                          text: 'Dependentes',
                                                        ),
                                                      ],
                                                      controller: _model
                                                          .tabBarController,
                                                      onTap: (i) async {
                                                        [
                                                          () async {},
                                                          () async {}
                                                        ][i]();
                                                      },
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: TabBarView(
                                                      controller: _model
                                                          .tabBarController,
                                                      children: [
                                                        SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .estadoCivilValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: const [
                                                                        'Casado',
                                                                        'Solteiro',
                                                                        'Divorciado',
                                                                        'Viuvo',
                                                                        'Não Informado'
                                                                      ],
                                                                      onChanged:
                                                                          (val) async {
                                                                        setState(() =>
                                                                            _model.estadoCivilValue =
                                                                                val);
                                                                        if (_model.estadoCivilValue !=
                                                                                null &&
                                                                            _model.estadoCivilValue !=
                                                                                '') {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            17,
                                                                            (_) =>
                                                                                0.05,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        } else {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            17,
                                                                            (_) =>
                                                                                0.0,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                      width:
                                                                          300.0,
                                                                      height:
                                                                          56.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Estado Civil',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_drop_down,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          12.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .sexoValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options: const [
                                                                        'Masculino',
                                                                        'Feminino',
                                                                        'Não Informado'
                                                                      ],
                                                                      onChanged:
                                                                          (val) async {
                                                                        setState(() =>
                                                                            _model.sexoValue =
                                                                                val);
                                                                        if (_model.sexoValue !=
                                                                                null &&
                                                                            _model.sexoValue !=
                                                                                '') {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            17,
                                                                            (_) =>
                                                                                0.05,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        } else {
                                                                          _model
                                                                              .updateSomaAtIndex(
                                                                            17,
                                                                            (_) =>
                                                                                0.0,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                      width:
                                                                          300.0,
                                                                      height:
                                                                          56.0,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Sexo',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_drop_down,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .alternate,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          12.0,
                                                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          true,
                                                                      isSearchable:
                                                                          false,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .paiTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .paiFocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.paiTextController',
                                                                        const Duration(
                                                                            milliseconds:
                                                                                0),
                                                                        () async {
                                                                          setState(
                                                                              () {
                                                                            _model.paiTextController?.text =
                                                                                functions.toUpperCase(_model.paiTextController.text)!;
                                                                            _model.paiTextController?.selection =
                                                                                TextSelection.collapsed(offset: _model.paiTextController!.text.length);
                                                                          });
                                                                        },
                                                                      ),
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Nome do pai',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megapreto,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megabranco,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color: FFAppState().alteraLayout == 1
                                                                                ? FlutterFlowTheme.of(context).cabeca1
                                                                                : FlutterFlowTheme.of(context).cabeca2,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFFF0004),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFFF0004),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).megabranco,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megapreto,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      validator: _model
                                                                          .paiTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .maeTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .maeFocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.maeTextController',
                                                                        const Duration(
                                                                            milliseconds:
                                                                                0),
                                                                        () async {
                                                                          setState(
                                                                              () {
                                                                            _model.maeTextController?.text =
                                                                                functions.toUpperCase(_model.maeTextController.text)!;
                                                                            _model.maeTextController?.selection =
                                                                                TextSelection.collapsed(offset: _model.maeTextController!.text.length);
                                                                          });
                                                                        },
                                                                      ),
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            false,
                                                                        labelText:
                                                                            'Nome da mãe',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megapreto,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megabranco,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color: FFAppState().alteraLayout == 1
                                                                                ? FlutterFlowTheme.of(context).cabeca1
                                                                                : FlutterFlowTheme.of(context).cabeca2,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFFF0004),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFFF0004),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).megabranco,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megapreto,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      validator: _model
                                                                          .maeTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .conjugueTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .conjugueFocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.conjugueTextController',
                                                                        const Duration(
                                                                            milliseconds:
                                                                                0),
                                                                        () async {
                                                                          setState(
                                                                              () {
                                                                            _model.conjugueTextController?.text =
                                                                                functions.toUpperCase(_model.conjugueTextController.text)!;
                                                                            _model.conjugueTextController?.selection =
                                                                                TextSelection.collapsed(offset: _model.conjugueTextController!.text.length);
                                                                          });
                                                                        },
                                                                      ),
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Nome do conjugue',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megapreto,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megabranco,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color: FFAppState().alteraLayout == 1
                                                                                ? FlutterFlowTheme.of(context).cabeca1
                                                                                : FlutterFlowTheme.of(context).cabeca2,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFFF0004),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFFF0004),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).megabranco,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megapreto,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      validator: _model
                                                                          .conjugueTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .telefoneTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .telefoneFocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Telefone',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megapreto,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megabranco,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color: FFAppState().alteraLayout == 1
                                                                                ? FlutterFlowTheme.of(context).cabeca1
                                                                                : FlutterFlowTheme.of(context).cabeca2,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFFF0004),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFFF0004),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).megabranco,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megapreto,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      validator: _model
                                                                          .telefoneTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                      inputFormatters: [
                                                                        _model
                                                                            .telefoneMask
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              if (valueOrDefault<
                                                                  bool>(
                                                                _model.tipoPessoa ==
                                                                        'Física'
                                                                    ? true
                                                                    : false,
                                                                false,
                                                              ))
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child: FlutterFlowDropDown<
                                                                          String>(
                                                                        controller: _model
                                                                            .localCobrancaValueController ??= FormFieldController<
                                                                                String>(
                                                                            null),
                                                                        options: const [
                                                                          'Casa',
                                                                          'Escritório'
                                                                        ],
                                                                        onChanged:
                                                                            (val) async {
                                                                          setState(() =>
                                                                              _model.localCobrancaValue = val);
                                                                          if (_model.localCobrancaValue != null &&
                                                                              _model.localCobrancaValue != '') {
                                                                            _model.updateSomaAtIndex(
                                                                              16,
                                                                              (_) => 0.05,
                                                                            );
                                                                            setState(() {});
                                                                          } else {
                                                                            _model.updateSomaAtIndex(
                                                                              16,
                                                                              (_) => 0.0,
                                                                            );
                                                                            setState(() {});
                                                                          }
                                                                        },
                                                                        width:
                                                                            300.0,
                                                                        height:
                                                                            56.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            'Local Cobrança',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_drop_down,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              30.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        borderWidth:
                                                                            2.0,
                                                                        borderRadius:
                                                                            12.0,
                                                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            true,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child: FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.religiaoValueController ??=
                                                                              FormFieldController<String>(null),
                                                                          options: const [
                                                                            'Católico',
                                                                            'Evangélico'
                                                                          ],
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.religiaoValue = val);
                                                                            if (_model.religiaoValue != null &&
                                                                                _model.religiaoValue != '') {
                                                                              _model.updateSomaAtIndex(
                                                                                17,
                                                                                (_) => 0.05,
                                                                              );
                                                                              setState(() {});
                                                                            } else {
                                                                              _model.updateSomaAtIndex(
                                                                                17,
                                                                                (_) => 0.0,
                                                                              );
                                                                              setState(() {});
                                                                            }
                                                                          },
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              56.0,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              'Religião',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.arrow_drop_down,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                30.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          borderWidth:
                                                                              2.0,
                                                                          borderRadius:
                                                                              12.0,
                                                                          margin: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isOverButton:
                                                                              true,
                                                                          isSearchable:
                                                                              false,
                                                                          isMultiSelect:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              if (valueOrDefault<
                                                                  bool>(
                                                                _model.tipoPessoa ==
                                                                        'Física'
                                                                    ? true
                                                                    : false,
                                                                false,
                                                              ))
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child: FutureBuilder<
                                                                          List<
                                                                              PlanosFunRow>>(
                                                                        future:
                                                                            PlanosFunTable().queryRows(
                                                                          queryFn: (q) => q.order(
                                                                              'nomePlano',
                                                                              ascending: true),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                child: CircularProgressIndicator(
                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<PlanosFunRow>
                                                                              planoPlanosFunRowList =
                                                                              snapshot.data!;
                                                                          return FlutterFlowDropDown<
                                                                              String>(
                                                                            controller: _model.planoValueController ??=
                                                                                FormFieldController<String>(null),
                                                                            options: planoPlanosFunRowList
                                                                                .map((e) => valueOrDefault<String>(
                                                                                      e.nomePlano,
                                                                                      '-',
                                                                                    ))
                                                                                .toList(),
                                                                            onChanged:
                                                                                (val) async {
                                                                              setState(() => _model.planoValue = val);
                                                                              if (_model.planoValue != null && _model.planoValue != '') {
                                                                                _model.updateSomaAtIndex(
                                                                                  18,
                                                                                  (_) => 0.05,
                                                                                );
                                                                                setState(() {});
                                                                              } else {
                                                                                _model.updateSomaAtIndex(
                                                                                  18,
                                                                                  (_) => 0.0,
                                                                                );
                                                                                setState(() {});
                                                                              }
                                                                            },
                                                                            width:
                                                                                300.0,
                                                                            height:
                                                                                56.0,
                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            hintText:
                                                                                'Plano',
                                                                            searchHintText:
                                                                                'Digite o Plano',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.arrow_drop_down,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 30.0,
                                                                            ),
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            elevation:
                                                                                2.0,
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            borderWidth:
                                                                                2.0,
                                                                            borderRadius:
                                                                                12.0,
                                                                            margin: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                4.0,
                                                                                16.0,
                                                                                4.0),
                                                                            hidesUnderline:
                                                                                true,
                                                                            isOverButton:
                                                                                true,
                                                                            isSearchable:
                                                                                true,
                                                                            isMultiSelect:
                                                                                false,
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child: FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.vendedorValueController ??=
                                                                              FormFieldController<String>(null),
                                                                          options: const [
                                                                            'Jose',
                                                                            'Antonio',
                                                                            'Maria'
                                                                          ],
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.vendedorValue = val);
                                                                            if (_model.vendedorValue != null &&
                                                                                _model.vendedorValue != '') {
                                                                              _model.updateSomaAtIndex(
                                                                                19,
                                                                                (_) => 0.05,
                                                                              );
                                                                              setState(() {});
                                                                            } else {
                                                                              _model.updateSomaAtIndex(
                                                                                19,
                                                                                (_) => 0.0,
                                                                              );
                                                                              setState(() {});
                                                                            }
                                                                          },
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              56.0,
                                                                          searchHintTextStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          searchTextStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              'Vendedor',
                                                                          searchHintText:
                                                                              'Digite o Vendedor',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.arrow_drop_down,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                30.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          borderWidth:
                                                                              2.0,
                                                                          borderRadius:
                                                                              12.0,
                                                                          margin: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isOverButton:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                          isMultiSelect:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                            ].divide(const SizedBox(
                                                                height: 8.0)),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: ListView(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          25.0,
                                                                          0.0,
                                                                          25.0,
                                                                          8.0),
                                                                      child:
                                                                          Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        elevation:
                                                                            5.0,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                              width: 2.0,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Marcia Anita de Marte',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Parentesco: Filha',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 12.0, 0.0),
                                                                                          child: Text(
                                                                                            'Nascimento: 15/01/1993',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: const Color(0xFF0E6317),
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Falecimento: 03/07/2035',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: const Color(0xFF830303),
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.btGeralSemTextoModel1,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: const BtGeralSemTextoWidget(
                                                                                        imagem: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/1ux46vau5q6p/Alterar2.png',
                                                                                        textoMiudo: 'Alterar',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceAround,
                                                                  children: [
                                                                    wrapWithModel(
                                                                      model: _model
                                                                          .btGeralMaiorModel1,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          const BtGeralMaiorWidget(
                                                                        imagem:
                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/xmk5f62e47k7/cancelar.png',
                                                                        texto:
                                                                            ' Cancelar',
                                                                      ),
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation: 0,
                                                                                insetPadding: EdgeInsets.zero,
                                                                                backgroundColor: Colors.transparent,
                                                                                alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child: const AddDependentesWidget(),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              setState(() {}));
                                                                        },
                                                                        child:
                                                                            wrapWithModel(
                                                                          model:
                                                                              _model.btGeralMaiorModel2,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              const BtGeralMaiorWidget(
                                                                            imagem:
                                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/tf8hnmlcykqn/Incluir2.png',
                                                                            texto:
                                                                                'Adicionar novo Dependente',
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Text(
                                                  'Preenchimento',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 8.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: (List<double>
                                                              var1) {
                                                            return var1.reduce(
                                                                (a, b) =>
                                                                    a + b);
                                                          }(_model.soma
                                                              .toList()),
                                                          width: 120.0,
                                                          lineHeight: 30.0,
                                                          animation: true,
                                                          animateFromLastPercent:
                                                              true,
                                                          progressColor: () {
                                                            if (FFAppState()
                                                                    .alteraLayout ==
                                                                1) {
                                                              return FlutterFlowTheme
                                                                      .of(context)
                                                                  .cabeca1;
                                                            } else if (FFAppState()
                                                                    .alteraLayout ==
                                                                2) {
                                                              return FlutterFlowTheme
                                                                      .of(context)
                                                                  .cabeca2;
                                                            } else if (FFAppState()
                                                                    .alteraLayout ==
                                                                3) {
                                                              return const Color(
                                                                  0x63070707);
                                                            } else {
                                                              return const Color(
                                                                  0x6C070707);
                                                            }
                                                          }(),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent4,
                                                          center: Text(
                                                            formatNumber(
                                                              (List<double>
                                                                  var1) {
                                                                return var1
                                                                    .reduce((a,
                                                                            b) =>
                                                                        a + b);
                                                              }(_model.soma
                                                                  .toList()),
                                                              formatType:
                                                                  FormatType
                                                                      .percent,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          padding:
                                                              EdgeInsets.zero,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await ClientesTable().insert({
                                            'CODCLI': 1,
                                            'TIPCLI': _model.tipoPessoa,
                                            'NOME': valueOrDefault<String>(
                                              _model.nomeTextController.text,
                                              '-',
                                            ),
                                            'FANTASIA': valueOrDefault<String>(
                                              _model
                                                  .fantasiaTextController.text,
                                              '-',
                                            ),
                                            'CONTATO': valueOrDefault<String>(
                                              _model.contatoTextController.text,
                                              '-',
                                            ),
                                            'ENDERECO': valueOrDefault<String>(
                                              _model
                                                  .enderecoTextController.text,
                                              '-',
                                            ),
                                            'NUMERO': valueOrDefault<String>(
                                              _model.numeroTextController.text,
                                              '-',
                                            ),
                                            'BAIRRO': valueOrDefault<String>(
                                              _model.bairroTextController.text,
                                              '-',
                                            ),
                                            'CIDADE': valueOrDefault<String>(
                                              _model.cidadeValue,
                                              '-',
                                            ),
                                            'ESTADO': valueOrDefault<String>(
                                              _model.ufValue,
                                              '-',
                                            ),
                                            'CEP': valueOrDefault<String>(
                                              _model.cepTextController.text,
                                              '-',
                                            ),
                                            'DATACAD': supaSerialize<DateTime>(
                                                getCurrentTimestamp),
                                            'BLOQUEIO': null,
                                            'DATNAS': supaSerialize<DateTime>(
                                                getCurrentTimestamp),
                                            'ATIVO': true,
                                            'OUTRASINF': '',
                                            'ID_PAIS': '1056',
                                            'RELIGIAO': valueOrDefault<String>(
                                              _model.religiaoValue,
                                              '-',
                                            ),
                                            'LOCALCOBRANCA':
                                                valueOrDefault<String>(
                                              _model.localCobrancaValue,
                                              '-',
                                            ),
                                            'WHATSAPP': valueOrDefault<String>(
                                              _model
                                                  .whatsAppTextController.text,
                                              '-',
                                            ),
                                            'CARENCIA': '60',
                                            'PLANO': valueOrDefault<String>(
                                              _model.planoValue,
                                              '-',
                                            ),
                                            'VENDEDOR': valueOrDefault<String>(
                                              _model.vendedorValue,
                                              '-',
                                            ),
                                            'empresa_id': 1,
                                            'id_user': currentUserUid,
                                            'LOCALFOTO': '',
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.btGeralSemTextoModel2,
                                          updateCallback: () => setState(() {}),
                                          child: const BtGeralSemTextoWidget(
                                            imagem:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/a488dxd275ry/salvar.png',
                                            textoMiudo: 'Salvar',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    'Preenchimento',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 8.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              LinearPercentIndicator(
                                                            percent:
                                                                (List<double>
                                                                    var1) {
                                                              return var1
                                                                  .reduce((a,
                                                                          b) =>
                                                                      a + b);
                                                            }(_model.soma
                                                                    .toList()),
                                                            width: 120.0,
                                                            lineHeight: 30.0,
                                                            animation: true,
                                                            animateFromLastPercent:
                                                                true,
                                                            progressColor: () {
                                                              if (FFAppState()
                                                                      .alteraLayout ==
                                                                  1) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .cabeca1;
                                                              } else if (FFAppState()
                                                                      .alteraLayout ==
                                                                  2) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .cabeca2;
                                                              } else if (FFAppState()
                                                                      .alteraLayout ==
                                                                  3) {
                                                                return const Color(
                                                                    0x63070707);
                                                              } else {
                                                                return const Color(
                                                                    0x6C070707);
                                                              }
                                                            }(),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                            center: Text(
                                                              formatNumber(
                                                                (List<double>
                                                                    var1) {
                                                                  return var1
                                                                      .reduce((a,
                                                                              b) =>
                                                                          a +
                                                                          b);
                                                                }(_model.soma
                                                                    .toList()),
                                                                formatType:
                                                                    FormatType
                                                                        .percent,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            padding:
                                                                EdgeInsets.zero,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.btGeralModel,
                                        updateCallback: () => setState(() {}),
                                        child: const BtGeralWidget(
                                          imagem:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/a488dxd275ry/salvar.png',
                                          texto: 'Salvar',
                                        ),
                                      ),
                                    ],
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
            ),
          ),
        ),
      ],
    );
  }
}
