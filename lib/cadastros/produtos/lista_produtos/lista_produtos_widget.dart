import '/backend/supabase/supabase.dart';
import '/botoes/bt_geral/bt_geral_widget.dart';
import '/botoes/bt_geral_maior/bt_geral_maior_widget.dart';
import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/botoes/cabeca_de_janelas/cabeca_de_janelas_widget.dart';
import '/cadastros/fornecedores/add_fornecedores/add_fornecedores_widget.dart';
import '/cadastros/produtos/add_produtos/add_produtos_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/geral/localizar/localizar_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'lista_produtos_model.dart';
export 'lista_produtos_model.dart';

class ListaProdutosWidget extends StatefulWidget {
  const ListaProdutosWidget({
    super.key,
    required this.alteraLayout,
  });

  final int? alteraLayout;

  @override
  State<ListaProdutosWidget> createState() => _ListaProdutosWidgetState();
}

class _ListaProdutosWidgetState extends State<ListaProdutosWidget> {
  late ListaProdutosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaProdutosModel());

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
          Flexible(
            child: Row(
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
                        width: 1000.0,
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
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/9iu466n2k1s5/produtos.png';
                                            } else if (FFAppState()
                                                    .alteraLayout ==
                                                2) {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/56z283erb8ze/produtos2.png';
                                            } else {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qdxr0igw8oct/clientes2.png';
                                            }
                                          }(),
                                          texto: 'Lista de Produtos',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .corpoDoSistema,
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
                                                                height: 100.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
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
                                                                      return FlutterFlowDataTable<
                                                                          String>(
                                                                        controller:
                                                                            _model.paginatedDataTableController,
                                                                        data:
                                                                            listaClientes,
                                                                        columnsBuilder:
                                                                            (onSortChanged) =>
                                                                                [
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'Código',
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            fixedWidth:
                                                                                60.0,
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                '  Nome do Produto',
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            fixedWidth:
                                                                                300.0,
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'Cód Barras',
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            fixedWidth:
                                                                                130.0,
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'Estoque',
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            fixedWidth:
                                                                                130.0,
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'Marca',
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            fixedWidth:
                                                                                180.0,
                                                                          ),
                                                                          DataColumn2(
                                                                            label:
                                                                                DefaultTextStyle.merge(
                                                                              softWrap: true,
                                                                              child: Text(
                                                                                'Venda',
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).megabranco,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            fixedWidth:
                                                                                90.0,
                                                                          ),
                                                                        ],
                                                                        dataRowBuilder: (listaClientesItem,
                                                                                listaClientesIndex,
                                                                                selected,
                                                                                onSelectChanged) =>
                                                                            DataRow(
                                                                          color:
                                                                              MaterialStateProperty.all(
                                                                            listaClientesIndex % 2 == 0
                                                                                ? FlutterFlowTheme.of(context).secondaryBackground
                                                                                : const Color(0xFFE1E6EA),
                                                                          ),
                                                                          cells:
                                                                              [
                                                                            AutoSizeText(
                                                                              '0001',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            AutoSizeText(
                                                                              'Descrição de produto aqui',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            AutoSizeText(
                                                                              '*85214796*',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            AutoSizeText(
                                                                              '136.232',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'Marca aqui',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              'R\$122.734,50',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ].map((c) => DataCell(c)).toList(),
                                                                        ),
                                                                        paginated:
                                                                            false,
                                                                        selectable:
                                                                            false,
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                        headingRowHeight:
                                                                            30.0,
                                                                        dataRowHeight:
                                                                            25.0,
                                                                        columnSpacing:
                                                                            2.0,
                                                                        headingRowColor:
                                                                            () {
                                                                          if (FFAppState().alteraLayout ==
                                                                              1) {
                                                                            return FlutterFlowTheme.of(context).cabeca1;
                                                                          } else if (FFAppState().alteraLayout ==
                                                                              2) {
                                                                            return FlutterFlowTheme.of(context).cabeca2;
                                                                          } else if (FFAppState().alteraLayout ==
                                                                              3) {
                                                                            return FlutterFlowTheme.of(context).megapreto;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).megapreto;
                                                                          }
                                                                        }(),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        addHorizontalDivider:
                                                                            false,
                                                                        addTopAndBottomDivider:
                                                                            false,
                                                                        hideDefaultHorizontalDivider:
                                                                            true,
                                                                        addVerticalDivider:
                                                                            false,
                                                                      );
                                                                    },
                                                                  ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) => Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
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
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: const AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  const LocalizarWidget(),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .btGeralModel1,
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
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                const AddProdutosWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.btGeralModel2,
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
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                0.0, 0.0),
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
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: const AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  const AddFornecedoresWidget(),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .btGeralModel3,
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
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
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
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Atenção! ação irreversível'),
                                                                    content: const Text(
                                                                        'Tem certeza que deseja excluir o cliente FULANO DE TAL?'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                        child: const Text(
                                                                            'Cancel'),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
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
                                                      model:
                                                          _model.btGeralModel4,
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
                                                wrapWithModel(
                                                  model:
                                                      _model.btGeralMaiorModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const BtGeralMaiorWidget(
                                                    imagem:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/8r1fnei1r8aa/movimentacao.png',
                                                    texto: 'Movimentação',
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model.btGeralModel5,
                                                    updateCallback: () =>
                                                        setState(() {}),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                const LocalizarWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .btGeralSemTextoModel1,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          const BtGeralSemTextoWidget(
                                                        imagem:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/41pm52y3izeo/buscar.png',
                                                        textoMiudo: 'Localizar',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                const AddProdutosWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .btGeralSemTextoModel2,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          const BtGeralSemTextoWidget(
                                                        imagem:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/ne1yvcghfiik/Incluir.png',
                                                        textoMiudo: 'Incluir',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .btGeralSemTextoModel3,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const BtGeralSemTextoWidget(
                                                    imagem:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/1ux46vau5q6p/Alterar2.png',
                                                    textoMiudo: 'Alterar',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .btGeralSemTextoModel4,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const BtGeralSemTextoWidget(
                                                    imagem:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/mczdnrf821nh/Excluir.png',
                                                    textoMiudo: 'Excluir',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .btGeralSemTextoModel5,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const BtGeralSemTextoWidget(
                                                    imagem:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/8r1fnei1r8aa/movimentacao.png',
                                                    textoMiudo: 'Movimento',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .btGeralSemTextoModel6,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const BtGeralSemTextoWidget(
                                                    imagem:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/idbj09xoqxdg/Duplicar.png',
                                                    textoMiudo: 'Duplicar',
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
