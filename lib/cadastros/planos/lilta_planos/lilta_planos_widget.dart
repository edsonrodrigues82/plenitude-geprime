import '/backend/supabase/supabase.dart';
import '/botoes/bt_geral/bt_geral_widget.dart';
import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/botoes/cabeca_de_janelas/cabeca_de_janelas_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'lilta_planos_model.dart';
export 'lilta_planos_model.dart';

class LiltaPlanosWidget extends StatefulWidget {
  const LiltaPlanosWidget({
    super.key,
    required this.alteraLayout,
  });

  final int? alteraLayout;

  @override
  State<LiltaPlanosWidget> createState() => _LiltaPlanosWidgetState();
}

class _LiltaPlanosWidgetState extends State<LiltaPlanosWidget> {
  late LiltaPlanosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LiltaPlanosModel());

    _model.switchValue = valueOrDefault<bool>(
      _model.ativoSN ? true : false,
      true,
    );
    _model.localizarTextController1 ??=
        TextEditingController(text: 'Plamp Executivo');
    _model.localizarFocusNode1 ??= FocusNode();

    _model.localizarTextController2 ??= TextEditingController(text: 'A');
    _model.localizarFocusNode2 ??= FocusNode();

    _model.localizarTextController3 ??= TextEditingController(text: 'R\$45,00');
    _model.localizarFocusNode3 ??= FocusNode();

    _model.localizarTextController4 ??= TextEditingController(text: '12');
    _model.localizarFocusNode4 ??= FocusNode();

    _model.localizarTextController5 ??= TextEditingController(text: '3');
    _model.localizarFocusNode5 ??= FocusNode();

    _model.localizarTextController6 ??= TextEditingController(text: '60');
    _model.localizarFocusNode6 ??= FocusNode();

    _model.localizarTextController7 ??= TextEditingController(text: '90');
    _model.localizarFocusNode7 ??= FocusNode();

    _model.localizarTextController8 ??= TextEditingController(text: '12,50');
    _model.localizarFocusNode8 ??= FocusNode();

    _model.localizarTextController9 ??= TextEditingController(text: '15,00');
    _model.localizarFocusNode9 ??= FocusNode();

    _model.localizarTextController10 ??= TextEditingController(text: '90');
    _model.localizarFocusNode10 ??= FocusNode();

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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Container(
                        width: 412.0,
                        height: 800.0,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 4.0, 4.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      wrapWithModel(
                                        model: _model.cabecaDeJanelasModel,
                                        updateCallback: () => setState(() {}),
                                        child: CabecaDeJanelasWidget(
                                          imagem: () {
                                            if (FFAppState().alteraLayout ==
                                                1) {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/b1tkcicnqd95/Plano.png';
                                            } else if (FFAppState()
                                                    .alteraLayout ==
                                                2) {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/7z8hif2vbcr2/Plano2.png';
                                            } else {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qdxr0igw8oct/clientes2.png';
                                            }
                                          }(),
                                          texto: 'Lista de Planos',
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                Navigator.pop(context);
                                              },
                                              child: Icon(
                                                Icons.close_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 30.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Flexible(
                                          child: Container(
                                            height: 627.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  flex: 10,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Expanded(
                                                          child: FutureBuilder<
                                                              List<
                                                                  ClientesRow>>(
                                                            future:
                                                                ClientesTable()
                                                                    .queryRows(
                                                              queryFn: (q) => q,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ClientesRow>
                                                                  containerClientesRowList =
                                                                  snapshot
                                                                      .data!;
                                                              return Container(
                                                                width: 100.0,
                                                                height: 621.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      flex: 3,
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Builder(
                                                                          builder:
                                                                              (context) {
                                                                            final listaClientes = List.generate(
                                                                                random_data.randomInteger(30, 100),
                                                                                (index) => random_data.randomString(
                                                                                      50,
                                                                                      200,
                                                                                      true,
                                                                                      false,
                                                                                      false,
                                                                                    )).toList();
                                                                            return FlutterFlowDataTable<String>(
                                                                              controller: _model.paginatedDataTableController,
                                                                              data: listaClientes,
                                                                              columnsBuilder: (onSortChanged) => [
                                                                                DataColumn2(
                                                                                  label: DefaultTextStyle.merge(
                                                                                    softWrap: true,
                                                                                    child: Text(
                                                                                      'ID',
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).megabranco,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  fixedWidth: 60.0,
                                                                                ),
                                                                                DataColumn2(
                                                                                  label: DefaultTextStyle.merge(
                                                                                    softWrap: true,
                                                                                    child: Text(
                                                                                      '  Nome do Plano',
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).megabranco,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  fixedWidth: 160.0,
                                                                                ),
                                                                                DataColumn2(
                                                                                  label: DefaultTextStyle.merge(
                                                                                    softWrap: true,
                                                                                    child: Text(
                                                                                      'Valor',
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).megabranco,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  fixedWidth: 80.0,
                                                                                ),
                                                                              ],
                                                                              dataRowBuilder: (listaClientesItem, listaClientesIndex, selected, onSelectChanged) => DataRow(
                                                                                color: MaterialStateProperty.all(
                                                                                  listaClientesIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : const Color(0xFFE1E6EA),
                                                                                ),
                                                                                cells: [
                                                                                  AutoSizeText(
                                                                                    'A',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  AutoSizeText(
                                                                                    'Plano Excecutivo',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  AutoSizeText(
                                                                                    '50,00',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ].map((c) => DataCell(c)).toList(),
                                                                              ),
                                                                              paginated: false,
                                                                              selectable: false,
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: MediaQuery.sizeOf(context).height * 1.0,
                                                                              headingRowHeight: 30.0,
                                                                              dataRowHeight: 25.0,
                                                                              columnSpacing: 2.0,
                                                                              headingRowColor: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              addHorizontalDivider: false,
                                                                              addTopAndBottomDivider: false,
                                                                              hideDefaultHorizontalDivider: true,
                                                                              addVerticalDivider: false,
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 7,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Flexible(
                                                                            flex:
                                                                                6,
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          flex: 3,
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Switch.adaptive(
                                                                                                  value: _model.switchValue!,
                                                                                                  onChanged: (newValue) async {
                                                                                                    setState(() => _model.switchValue = newValue);
                                                                                                    if (newValue) {
                                                                                                      _model.ativoSN = false;
                                                                                                      setState(() {});
                                                                                                    }
                                                                                                  },
                                                                                                  activeColor: FlutterFlowTheme.of(context).primary,
                                                                                                  activeTrackColor: FlutterFlowTheme.of(context).accent1,
                                                                                                  inactiveTrackColor: FlutterFlowTheme.of(context).tertiary,
                                                                                                  inactiveThumbColor: const Color(0xFFF40303),
                                                                                                ),
                                                                                                if (_model.switchValue ?? true)
                                                                                                  Text(
                                                                                                    'Ativo',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Readex Pro',
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                if (!_model.switchValue!)
                                                                                                  Text(
                                                                                                    'Cancelado',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Readex Pro',
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          flex: 6,
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: TextFormField(
                                                                                              controller: _model.localizarTextController1,
                                                                                              focusNode: _model.localizarFocusNode1,
                                                                                              autofocus: false,
                                                                                              obscureText: false,
                                                                                              decoration: InputDecoration(
                                                                                                labelText: 'Nome',
                                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megapreto,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                enabledBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedBorder: OutlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                errorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                filled: true,
                                                                                                fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              validator: _model.localizarTextController1Validator.asValidator(context),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          flex: 2,
                                                                                          child: TextFormField(
                                                                                            controller: _model.localizarTextController2,
                                                                                            focusNode: _model.localizarFocusNode2,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: 'Id',
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megabranco,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0x00000000),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              errorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              filled: true,
                                                                                              fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            keyboardType: TextInputType.emailAddress,
                                                                                            validator: _model.localizarTextController2Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: TextFormField(
                                                                                              controller: _model.localizarTextController3,
                                                                                              focusNode: _model.localizarFocusNode3,
                                                                                              autofocus: false,
                                                                                              obscureText: false,
                                                                                              decoration: InputDecoration(
                                                                                                labelText: 'Valor Mensalidade',
                                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megapreto,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                enabledBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedBorder: OutlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                errorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                filled: true,
                                                                                                fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              validator: _model.localizarTextController3Validator.asValidator(context),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.localizarTextController4,
                                                                                            focusNode: _model.localizarFocusNode4,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: 'Quantidade Membros',
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megabranco,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0x00000000),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              errorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              filled: true,
                                                                                              fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            keyboardType: TextInputType.emailAddress,
                                                                                            validator: _model.localizarTextController4Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: TextFormField(
                                                                                              controller: _model.localizarTextController5,
                                                                                              focusNode: _model.localizarFocusNode5,
                                                                                              autofocus: false,
                                                                                              obscureText: false,
                                                                                              decoration: InputDecoration(
                                                                                                labelText: 'Quantidde Idosos',
                                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megapreto,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                enabledBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedBorder: OutlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                errorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                filled: true,
                                                                                                fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              validator: _model.localizarTextController5Validator.asValidator(context),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.localizarTextController6,
                                                                                            focusNode: _model.localizarFocusNode6,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: 'Qtd dias Carencia Titula',
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megabranco,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0x00000000),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              errorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              filled: true,
                                                                                              fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            keyboardType: TextInputType.emailAddress,
                                                                                            validator: _model.localizarTextController6Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: TextFormField(
                                                                                              controller: _model.localizarTextController7,
                                                                                              focusNode: _model.localizarFocusNode7,
                                                                                              autofocus: false,
                                                                                              obscureText: false,
                                                                                              decoration: InputDecoration(
                                                                                                labelText: 'Qtd dias Carencia Dependentes',
                                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megapreto,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                enabledBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedBorder: OutlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                errorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                filled: true,
                                                                                                fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              validator: _model.localizarTextController7Validator.asValidator(context),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.localizarTextController8,
                                                                                            focusNode: _model.localizarFocusNode8,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: 'Valor Adiconal Idoso',
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megabranco,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0x00000000),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              errorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              filled: true,
                                                                                              fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            keyboardType: TextInputType.emailAddress,
                                                                                            validator: _model.localizarTextController8Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: TextFormField(
                                                                                              controller: _model.localizarTextController9,
                                                                                              focusNode: _model.localizarFocusNode9,
                                                                                              autofocus: false,
                                                                                              obscureText: false,
                                                                                              decoration: InputDecoration(
                                                                                                labelText: 'Valor Adicional Membro',
                                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megapreto,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Readex Pro',
                                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                enabledBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedBorder: OutlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                errorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                focusedErrorBorder: OutlineInputBorder(
                                                                                                  borderSide: const BorderSide(
                                                                                                    color: Color(0xFFFF0004),
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                                filled: true,
                                                                                                fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              keyboardType: TextInputType.emailAddress,
                                                                                              validator: _model.localizarTextController9Validator.asValidator(context),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.localizarTextController10,
                                                                                            focusNode: _model.localizarFocusNode10,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: 'Dias Carencia Convalescentes',
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).megabranco,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0x00000000),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FFAppState().alteraLayout == 1 ? FlutterFlowTheme.of(context).cabeca1 : FlutterFlowTheme.of(context).cabeca2,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              errorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                                borderSide: const BorderSide(
                                                                                                  color: Color(0xFFFF0004),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              filled: true,
                                                                                              fillColor: FlutterFlowTheme.of(context).megabranco,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            keyboardType: TextInputType.emailAddress,
                                                                                            validator: _model.localizarTextController10Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 4.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
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
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Flexible(
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model.btGeralModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: const BtGeralWidget(
                                                      imagem:
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/a488dxd275ry/salvar.png',
                                                      texto: 'Salvar',
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
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 2.0, 8.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Flexible(
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .btGeralSemTextoModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const BtGeralSemTextoWidget(
                                                    imagem:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/a488dxd275ry/salvar.png',
                                                    textoMiudo: 'Salvar',
                                                  ),
                                                ),
                                              ],
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
