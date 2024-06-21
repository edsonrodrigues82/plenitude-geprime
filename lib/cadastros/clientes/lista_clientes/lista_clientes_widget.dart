import '/backend/supabase/supabase.dart';
import '/botoes/bt_geral/bt_geral_widget.dart';
import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/botoes/cabeca_de_janelas/cabeca_de_janelas_widget.dart';
import '/cadastros/clientes/add_clientes/add_clientes_widget.dart';
import '/cadastros/fornecedores/add_fornecedores/add_fornecedores_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/geral/localizar/localizar_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'lista_clientes_model.dart';
export 'lista_clientes_model.dart';

class ListaClientesWidget extends StatefulWidget {
  const ListaClientesWidget({
    super.key,
    required this.alteraLayout,
    required this.company,
    required this.user,
  });

  final int? alteraLayout;
  final EmpresaRow? company;
  final UsuariosRow? user;

  @override
  State<ListaClientesWidget> createState() => _ListaClientesWidgetState();
}

class _ListaClientesWidgetState extends State<ListaClientesWidget> {
  late ListaClientesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaClientesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.respostaClientes = await ClientesTable().queryRows(
        queryFn: (q) => q.eq(
          'empresa_id',
          widget.company?.id,
        ),
      );
      _model.clienteSelecionado = _model.respostaClientes?.first;
      setState(() {});
      setState(() => _model.requestCompleter1 = null);
      await _model.waitForRequestCompleted1();
    });

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
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            width: 1000.0,
            height: 768.0,
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
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 4.0, 4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          wrapWithModel(
                            model: _model.cabecaDeJanelasModel,
                            updateCallback: () => setState(() {}),
                            child: CabecaDeJanelasWidget(
                              imagem: () {
                                if (FFAppState().alteraLayout == 1) {
                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/we9alyd5flw8/clientes.png';
                                } else if (FFAppState().alteraLayout == 2) {
                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qdxr0igw8oct/clientes2.png';
                                } else {
                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qdxr0igw8oct/clientes2.png';
                                }
                              }(),
                              texto: 'Lista de Clientes',
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 8.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close_sharp,
                                    color: FlutterFlowTheme.of(context)
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
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                height: 627.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .corpoDoSistema,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      flex: 10,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 4.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Expanded(
                                              child: FutureBuilder<
                                                  List<ClientesRow>>(
                                                future: (_model
                                                            .requestCompleter2 ??=
                                                        Completer<
                                                            List<ClientesRow>>()
                                                          ..complete(
                                                              ClientesTable()
                                                                  .queryRows(
                                                            queryFn: (q) => q,
                                                          )))
                                                    .future,
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ClientesRow>
                                                      containerClientesRowList =
                                                      snapshot.data!;
                                                  return Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                        ))
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                () {
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
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .megapreto;
                                                                  } else {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .megapreto;
                                                                  }
                                                                }(),
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .megapreto,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          4.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Código',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).megabranco,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    flex: 5,
                                                                    child: Text(
                                                                      'Nome',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      'Cidade',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    flex: 3,
                                                                    child: Text(
                                                                      'CPF/CNPJ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child: Text(
                                                                      'WhatsApp',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
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
                                                          tablet: false,
                                                        ))
                                                          Expanded(
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final filhoclientes =
                                                                    containerClientesRowList
                                                                        .toList();
                                                                return ListView
                                                                    .separated(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      filhoclientes
                                                                          .length,
                                                                  separatorBuilder: (_,
                                                                          __) =>
                                                                      const SizedBox(
                                                                          height:
                                                                              5.0),
                                                                  itemBuilder:
                                                                      (context,
                                                                          filhoclientesIndex) {
                                                                    final filhoclientesItem =
                                                                        filhoclientes[
                                                                            filhoclientesIndex];
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children:
                                                                          [
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                formatNumber(
                                                                                  filhoclientesItem.codcli,
                                                                                  formatType: FormatType.custom,
                                                                                  format: '0000',
                                                                                  locale: '',
                                                                                ),
                                                                                '-',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              5,
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              filhoclientesItem.nome,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              2,
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              filhoclientesItem.cidade,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              2,
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              filhoclientesItem.cnpjcpf,
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              2,
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              filhoclientesItem.whatsapp,
                                                                              '-',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.end,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        const Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              4.0,
                                                                              0.0),
                                                                          child:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.whatsapp,
                                                                            color:
                                                                                Color(0xFF2F8121),
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Expanded(
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final filhoclientes =
                                                                    containerClientesRowList
                                                                        .toList();
                                                                return ListView
                                                                    .separated(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      filhoclientes
                                                                          .length,
                                                                  separatorBuilder: (_,
                                                                          __) =>
                                                                      const SizedBox(
                                                                          height:
                                                                              5.0),
                                                                  itemBuilder:
                                                                      (context,
                                                                          filhoclientesIndex) {
                                                                    final filhoclientesItem =
                                                                        filhoclientes[
                                                                            filhoclientesIndex];
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                2.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                _model.clienteSelecionado = filhoclientesItem;
                                                                                setState(() {});
                                                                                setState(() => _model.requestCompleter1 = null);
                                                                                await _model.waitForRequestCompleted1();
                                                                              },
                                                                              child: Container(
                                                                                width: 100.0,
                                                                                height: 61.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: () {
                                                                                    if (FFAppState().alteraLayout == 1) {
                                                                                      return const Color(0x26DC3C00);
                                                                                    } else if (FFAppState().alteraLayout == 2) {
                                                                                      return const Color(0x26094AB2);
                                                                                    } else if (FFAppState().alteraLayout == 3) {
                                                                                      return FlutterFlowTheme.of(context).fundoIcon;
                                                                                    } else {
                                                                                      return const Color(0x1C094AB2);
                                                                                    }
                                                                                  }(),
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(4.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            flex: 3,
                                                                                            child: Text(
                                                                                              '${valueOrDefault<String>(
                                                                                                formatNumber(
                                                                                                  filhoclientesItem.codcli,
                                                                                                  formatType: FormatType.custom,
                                                                                                  format: '0000',
                                                                                                  locale: '',
                                                                                                ),
                                                                                                '-',
                                                                                              )} - ${valueOrDefault<String>(
                                                                                                filhoclientesItem.nome,
                                                                                                '-',
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Flexible(
                                                                                            flex: 1,
                                                                                            child: Text(
                                                                                              '${valueOrDefault<String>(
                                                                                                filhoclientesItem.cidade,
                                                                                                '-',
                                                                                              )} - ${valueOrDefault<String>(
                                                                                                filhoclientesItem.cnpjcpf,
                                                                                                '-',
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          filhoclientesItem.whatsapp,
                                                                                          '-',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: valueOrDefault<Color>(
                                                                                                () {
                                                                                                  if (FFAppState().alteraLayout == 1) {
                                                                                                    return FlutterFlowTheme.of(context).cabeca1;
                                                                                                  } else if (FFAppState().alteraLayout == 2) {
                                                                                                    return FlutterFlowTheme.of(context).cabeca2;
                                                                                                  } else if (FFAppState().alteraLayout == 3) {
                                                                                                    return FlutterFlowTheme.of(context).megapreto;
                                                                                                  } else {
                                                                                                    return FlutterFlowTheme.of(context).megapreto;
                                                                                                  }
                                                                                                }(),
                                                                                                FlutterFlowTheme.of(context).megapreto,
                                                                                              ),
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                              },
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
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.clienteSelecionado?.nome,
                                                'Não Informado',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 10,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(
                                            child: FutureBuilder<
                                                List<DependentesRow>>(
                                              future: (_model
                                                          .requestCompleter1 ??=
                                                      Completer<
                                                          List<
                                                              DependentesRow>>()
                                                        ..complete(
                                                            DependentesTable()
                                                                .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'empresa_id',
                                                                widget.company
                                                                    ?.id,
                                                              )
                                                              .eq(
                                                                'cliente',
                                                                _model
                                                                    .clienteSelecionado
                                                                    ?.id,
                                                              )
                                                              .order('nome',
                                                                  ascending:
                                                                      true),
                                                        )))
                                                  .future,
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<DependentesRow>
                                                    containerDependentesRowList =
                                                    snapshot.data!;
                                                return Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              () {
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
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .megapreto;
                                                                } else {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .megapreto;
                                                                }
                                                              }(),
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .megapreto,
                                                            ),
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      12.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      12.0),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Situação',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    'Cadastro',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Dias',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).megabranco,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    'Motivo Cancel',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    'Parentesco',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 3,
                                                                  child: Text(
                                                                    'Nome',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    'Nascimento',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    'Falecimento',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).megabranco,
                                                                          letterSpacing:
                                                                              0.0,
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
                                                        tablet: false,
                                                      ))
                                                        Expanded(
                                                          child: Builder(
                                                            builder: (context) {
                                                              final filhodependentes =
                                                                  containerDependentesRowList
                                                                      .toList();
                                                              return ListView
                                                                  .separated(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    filhodependentes
                                                                        .length,
                                                                separatorBuilder: (_,
                                                                        __) =>
                                                                    const SizedBox(
                                                                        height:
                                                                            5.0),
                                                                itemBuilder:
                                                                    (context,
                                                                        filhodependentesIndex) {
                                                                  final filhodependentesItem =
                                                                      filhodependentes[
                                                                          filhodependentesIndex];
                                                                  return Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                filhodependentesItem.situacao,
                                                                                '-',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              dateTimeFormat('d/M/y', filhodependentesItem.cadastro),
                                                                              '-',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                12.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '120',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).megapreto,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            filhodependentesItem.motcancelamento!,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            filhodependentesItem.parentesco!,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              3,
                                                                          child:
                                                                              Text(
                                                                            filhodependentesItem.nome!,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            dateTimeFormat('d/M/y',
                                                                                filhodependentesItem.nascimento!),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            dateTimeFormat('d/M/y',
                                                                                filhodependentesItem.falecimento!),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).megapreto,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                        Expanded(
                                                          child: Builder(
                                                            builder: (context) {
                                                              final filhodependnetes =
                                                                  containerDependentesRowList
                                                                      .toList();
                                                              return ListView
                                                                  .separated(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    filhodependnetes
                                                                        .length,
                                                                separatorBuilder: (_,
                                                                        __) =>
                                                                    const SizedBox(
                                                                        height:
                                                                            5.0),
                                                                itemBuilder:
                                                                    (context,
                                                                        filhodependnetesIndex) {
                                                                  final filhodependnetesItem =
                                                                      filhodependnetes[
                                                                          filhodependnetesIndex];
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              2.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                65.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: () {
                                                                                if (FFAppState().alteraLayout == 1) {
                                                                                  return const Color(0x26DC3C00);
                                                                                } else if (FFAppState().alteraLayout == 2) {
                                                                                  return const Color(0x26094AB2);
                                                                                } else if (FFAppState().alteraLayout == 3) {
                                                                                  return FlutterFlowTheme.of(context).fundoIcon;
                                                                                } else {
                                                                                  return const Color(0x1C094AB2);
                                                                                }
                                                                              }(),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(4.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        flex: 3,
                                                                                        child: Text(
                                                                                          '${valueOrDefault<String>(
                                                                                            filhodependnetesItem.parentesco,
                                                                                            ' -',
                                                                                          )} - ${valueOrDefault<String>(
                                                                                            filhodependnetesItem.nome,
                                                                                            ' -',
                                                                                          )}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Flexible(
                                                                                        flex: 1,
                                                                                        child: Text(
                                                                                          '${valueOrDefault<String>(
                                                                                            filhodependnetesItem.situacao,
                                                                                            ' -',
                                                                                          )}Nasc: ${valueOrDefault<String>(
                                                                                            dateTimeFormat('d/M/y', filhodependnetesItem.nascimento),
                                                                                            ' -',
                                                                                          )}Obito: ${valueOrDefault<String>(
                                                                                            dateTimeFormat('d/M/y', filhodependnetesItem.falecimento),
                                                                                            ' -',
                                                                                          )}',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      filhodependnetesItem.whatsapp,
                                                                                      ' -',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: valueOrDefault<Color>(
                                                                                            () {
                                                                                              if (FFAppState().alteraLayout == 1) {
                                                                                                return FlutterFlowTheme.of(context).cabeca1;
                                                                                              } else if (FFAppState().alteraLayout == 2) {
                                                                                                return FlutterFlowTheme.of(context).cabeca2;
                                                                                              } else if (FFAppState().alteraLayout == 3) {
                                                                                                return FlutterFlowTheme.of(context).megapreto;
                                                                                              } else {
                                                                                                return FlutterFlowTheme.of(context).megapreto;
                                                                                              }
                                                                                            }(),
                                                                                            FlutterFlowTheme.of(context).megapreto,
                                                                                          ),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            },
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
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().alteraLayout == 1) {
                                            return const Color(0x26DC3C00);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              2) {
                                            return const Color(0x26094AB2);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              3) {
                                            return FlutterFlowTheme.of(context)
                                                .fundoIcon;
                                          } else {
                                            return const Color(0x1C094AB2);
                                          }
                                        }(),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Builder(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: const LocalizarWidget(),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          child: wrapWithModel(
                                            model: _model.btGeralSemTextoModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const BtGeralSemTextoWidget(
                                              imagem:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/41pm52y3izeo/buscar.png',
                                              textoMiudo: 'Licalizar',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().alteraLayout == 1) {
                                            return const Color(0x26DC3C00);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              2) {
                                            return const Color(0x26094AB2);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              3) {
                                            return FlutterFlowTheme.of(context)
                                                .fundoIcon;
                                          } else {
                                            return const Color(0x1C094AB2);
                                          }
                                        }(),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Builder(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: AddClientesWidget(
                                                    parte1: true,
                                                    parte2: false,
                                                    company: widget.company!,
                                                    user: widget.user!,
                                                    novo: true,
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          child: wrapWithModel(
                                            model: _model.btGeralSemTextoModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const BtGeralSemTextoWidget(
                                              imagem:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/ne1yvcghfiik/Incluir.png',
                                              textoMiudo: 'Incluir',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().alteraLayout == 1) {
                                            return const Color(0x26DC3C00);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              2) {
                                            return const Color(0x26094AB2);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              3) {
                                            return FlutterFlowTheme.of(context)
                                                .fundoIcon;
                                          } else {
                                            return const Color(0x1C094AB2);
                                          }
                                        }(),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: wrapWithModel(
                                        model: _model.btGeralSemTextoModel3,
                                        updateCallback: () => setState(() {}),
                                        child: const BtGeralSemTextoWidget(
                                          imagem:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/1ux46vau5q6p/Alterar2.png',
                                          textoMiudo: 'Alterar',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().alteraLayout == 1) {
                                            return const Color(0x26DC3C00);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              2) {
                                            return const Color(0x26094AB2);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              3) {
                                            return FlutterFlowTheme.of(context)
                                                .fundoIcon;
                                          } else {
                                            return const Color(0x1C094AB2);
                                          }
                                        }(),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: wrapWithModel(
                                        model: _model.btGeralSemTextoModel4,
                                        updateCallback: () => setState(() {}),
                                        child: const BtGeralSemTextoWidget(
                                          imagem:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/mczdnrf821nh/Excluir.png',
                                          textoMiudo: 'Excluir',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().alteraLayout == 1) {
                                            return const Color(0x26DC3C00);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              2) {
                                            return const Color(0x26094AB2);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              3) {
                                            return FlutterFlowTheme.of(context)
                                                .fundoIcon;
                                          } else {
                                            return const Color(0x1C094AB2);
                                          }
                                        }(),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: wrapWithModel(
                                        model: _model.btGeralSemTextoModel5,
                                        updateCallback: () => setState(() {}),
                                        child: const BtGeralSemTextoWidget(
                                          imagem:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/afdwrigte99v/Historico.png',
                                          textoMiudo: 'Histórico',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (FFAppState().alteraLayout == 1) {
                                            return const Color(0x26DC3C00);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              2) {
                                            return const Color(0x26094AB2);
                                          } else if (FFAppState()
                                                  .alteraLayout ==
                                              3) {
                                            return FlutterFlowTheme.of(context)
                                                .fundoIcon;
                                          } else {
                                            return const Color(0x1C094AB2);
                                          }
                                        }(),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: wrapWithModel(
                                        model: _model.btGeralSemTextoModel6,
                                        updateCallback: () => setState(() {}),
                                        child: const BtGeralSemTextoWidget(
                                          imagem:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/fcw2sgcx51j6/iconeCarteira_(2).png',
                                          textoMiudo: 'Carteira',
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 2.0)),
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
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              Flexible(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 4.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: const LocalizarWidget(),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.btGeralModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const BtGeralWidget(
                                                imagem:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/41pm52y3izeo/buscar.png',
                                                texto: 'Localizar',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: AddClientesWidget(
                                                    parte1: true,
                                                    parte2: true,
                                                    company: widget.company!,
                                                    user: widget.user!,
                                                    novo: true,
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            setState(() => _model
                                                .requestCompleter2 = null);
                                            await _model
                                                .waitForRequestCompleted2();
                                            setState(() => _model
                                                .requestCompleter1 = null);
                                            await _model
                                                .waitForRequestCompleted1();
                                          },
                                          child: wrapWithModel(
                                            model: _model.btGeralModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const BtGeralWidget(
                                              imagem:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/ne1yvcghfiik/Incluir.png',
                                              texto: 'Incluir',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child:
                                                        const AddFornecedoresWidget(),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.btGeralModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const BtGeralWidget(
                                                imagem:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/1ux46vau5q6p/Alterar2.png',
                                                texto: 'Alterar',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              'Atenção! ação irreversível'),
                                                          content: const Text(
                                                              'Tem certeza que deseja excluir o cliente FULANO DE TAL?'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      false),
                                                              child: const Text(
                                                                  'Cancel'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      true),
                                                              child: const Text(
                                                                  'Confirm'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ) ??
                                                    false;
                                          },
                                          child: wrapWithModel(
                                            model: _model.btGeralModel4,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const BtGeralWidget(
                                              imagem:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/mczdnrf821nh/Excluir.png',
                                              texto: 'Excluir',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.btGeralModel5,
                                          updateCallback: () => setState(() {}),
                                          child: const BtGeralWidget(
                                            imagem:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/afdwrigte99v/Historico.png',
                                            texto: 'Histórico',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.btGeralModel6,
                                          updateCallback: () => setState(() {}),
                                          child: const BtGeralWidget(
                                            imagem:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/idbj09xoqxdg/Duplicar.png',
                                            texto: 'Duplicar',
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
