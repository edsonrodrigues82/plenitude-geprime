import '/botoes/btnovo/btnovo_widget.dart';
import '/cadastros/clientes/lista_clientes/lista_clientes_widget.dart';
import '/cadastros/fornecedores/lista_fornecedores/lista_fornecedores_widget.dart';
import '/cadastros/planos/lilta_planos/lilta_planos_widget.dart';
import '/cadastros/produtos/lista_produtos/lista_produtos_widget.dart';
import '/contrato/comp_janelas/contratos/contratos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/geral/empresa/empresa_widget.dart';
import '/geral/recibo/recibo_widget.dart';
import '/implementar_depois/card23_inbox/card23_inbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'menu_principal_model.dart';
export 'menu_principal_model.dart';

class MenuPrincipalWidget extends StatefulWidget {
  const MenuPrincipalWidget({super.key});

  @override
  State<MenuPrincipalWidget> createState() => _MenuPrincipalWidgetState();
}

class _MenuPrincipalWidgetState extends State<MenuPrincipalWidget> {
  late MenuPrincipalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuPrincipalModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.searchUserCompany(context);
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'MenuPrincipal',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().alteraLayout = () {
                        if (FFAppState().alteraLayout == 1) {
                          return 2;
                        } else if (FFAppState().alteraLayout == 2) {
                          return 3;
                        } else {
                          return 1;
                        }
                      }();
                      setState(() {});
                    },
                    child: Container(
                      width: double.infinity,
                      height: 90.0,
                      decoration: BoxDecoration(
                        color: () {
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
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PlenitudeSystem GEPrime',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.company?.fantasia,
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.userName?.nome,
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Gupter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Builder(
                                  builder: (context) => Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  const AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: const Card23InboxWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Container(
                                        width: 35.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: Image.network(
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/lpq4lywxibtr/chat-z.png',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 35.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: Image.network(
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/y6nvk8331lel/whatsApp-z.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Container(
                                    width: 35.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/1pay4tctdcxz/info.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('login');
                                    },
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/flp3wo7hkqty/help.png',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: () {
                          if (FFAppState().alteraLayout == 1) {
                            return const Color(0x20DC3C00);
                          } else if (FFAppState().alteraLayout == 2) {
                            return const Color(0x1C094AB2);
                          } else if (FFAppState().alteraLayout == 3) {
                            return FlutterFlowTheme.of(context).corpoDoSistema;
                          } else {
                            return const Color(0x00094AB2);
                          }
                        }(),
                        borderRadius: BorderRadius.circular(0.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: const BoxDecoration(),
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x19DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x27094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Builder(
                                            builder: (context) => InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
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
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            ListaClientesWidget(
                                                          alteraLayout:
                                                              FFAppState()
                                                                  .alteraLayout,
                                                          company:
                                                              _model.company!,
                                                          user:
                                                              _model.userName!,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.btClientesMobModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/we9alyd5flw8/clientes.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qdxr0igw8oct/clientes2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/yfavql4q5k45/clientes3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qdxr0igw8oct/clientes2.png';
                                                    }
                                                  }(),
                                                  texto: 'Clientes',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x19DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x27094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
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
                                              highlightColor:
                                                  Colors.transparent,
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
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            ListaFornecedoresWidget(
                                                          alteraLayout:
                                                              FFAppState()
                                                                  .alteraLayout,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: wrapWithModel(
                                                model:
                                                    _model.btFornecedoresModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/h3egjtavsm9y/fornecedores.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/12dpit8cvd2l/fornecedores2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/zojz71vxklig/fornecedores3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/zojz71vxklig/fornecedores3.png';
                                                    }
                                                  }(),
                                                  texto: 'Fornecedores',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x19DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x25094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
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
                                              highlightColor:
                                                  Colors.transparent,
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
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            ListaProdutosWidget(
                                                          alteraLayout:
                                                              FFAppState()
                                                                  .alteraLayout,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: wrapWithModel(
                                                model: _model.btProdutosModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/9iu466n2k1s5/produtos.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/56z283erb8ze/produtos2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/scua6r1hll2w/produtos3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/scua6r1hll2w/produtos3.png';
                                                    }
                                                  }(),
                                                  texto: 'Produtos',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x19DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
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
                                              highlightColor:
                                                  Colors.transparent,
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
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: ContratosWidget(
                                                          alteraLayout:
                                                              FFAppState()
                                                                  .alteraLayout,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: wrapWithModel(
                                                model: _model.btnContratosModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/cskj8o87bz02/orcamentos.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/uxf01efhtjyk/icms2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/xquw09mynuar/orcamento3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/xquw09mynuar/orcamento3.png';
                                                    }
                                                  }(),
                                                  texto: 'Contratos',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x19DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x25094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Visibility(
                                            visible: responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/r25gvs5t7u1n/vendas.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/81qv3bkmu50m/vendas2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/tpx46ijz82r1/vendas3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/tpx46ijz82r1/vendas3.png';
                                                  }
                                                }(),
                                                texto: 'Vendas',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x25DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Visibility(
                                            visible: responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/vht9zh6hug2u/compras.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/2qpvls1ulvrb/compras2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/wu3ltqyo6a8l/Compras3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/wu3ltqyo6a8l/Compras3.png';
                                                  }
                                                }(),
                                                texto: 'Compras',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Visibility(
                                            visible: responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/4c0rz6hxkn95/servicos.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/dcxj87ktgykb/servicos2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/watuhtr29fun/servicos3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/watuhtr29fun/servicos3.png';
                                                  }
                                                }(),
                                                texto: 'Utilitários',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 2.0)),
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel4,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/r25gvs5t7u1n/vendas.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/81qv3bkmu50m/vendas2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/tpx46ijz82r1/vendas3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/tpx46ijz82r1/vendas3.png';
                                                  }
                                                }(),
                                                texto: 'Vendas',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel5,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/vht9zh6hug2u/compras.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/2qpvls1ulvrb/compras2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/wu3ltqyo6a8l/Compras3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/wu3ltqyo6a8l/Compras3.png';
                                                  }
                                                }(),
                                                texto: 'Compras',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed('teste');
                                              },
                                              child: wrapWithModel(
                                                model: _model.btnovoModel6,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/4c0rz6hxkn95/servicos.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/dcxj87ktgykb/servicos2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/watuhtr29fun/servicos3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/watuhtr29fun/servicos3.png';
                                                    }
                                                  }(),
                                                  texto: 'Utilitários',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel7,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/ha4kcubdefa6/funcionarios.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qusdx58o7m3w/funcionarios2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/a4kwq0vmqr8e/funcionarios3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/a4kwq0vmqr8e/funcionarios3.png';
                                                  }
                                                }(),
                                                texto: 'Funcionários',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 2.0)),
                                      ),
                                    ),
                                  ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel8,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/xz4oc4k1b4q1/receber.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/yrc31o0650oa/receber2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/egbtyhbl4yjy/receber3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/egbtyhbl4yjy/receber3.png';
                                                }
                                              }(),
                                              texto: 'Receber',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel9,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/x6092384ktzk/pagar.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/10txt8b66mz5/pagar2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dd9ueaw3th5o/pagar3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dd9ueaw3th5o/pagar3.png';
                                                }
                                              }(),
                                              texto: 'Pagar',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel10,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/p9qra0q88dif/fluxocaixa.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/phkhtc77k1n1/fluxocaixa2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/jvutwrxoeb91/fluxocaixa3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/jvutwrxoeb91/fluxocaixa3.png';
                                                }
                                              }(),
                                              texto: 'Fluxo Caixa',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel11,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/lmkzlcuunad9/banco.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/xt89yy4nb91a/banco2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/gnkuz7v2q9oi/Banco.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/gnkuz7v2q9oi/Banco.png';
                                                }
                                              }(),
                                              texto: 'Banco',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ),
                                              child: wrapWithModel(
                                                model: _model.btnovoModel12,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/ha4kcubdefa6/funcionarios.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qusdx58o7m3w/funcionarios2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/a4kwq0vmqr8e/funcionarios3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/a4kwq0vmqr8e/funcionarios3.png';
                                                    }
                                                  }(),
                                                  texto: 'Funcionarios',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ),
                                              child: wrapWithModel(
                                                model: _model.btnovoModel13,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/jw7qgv3h9h93/grupos.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/y4mctsfh2igl/grupos2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/jfscy6i4von6/grupo3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/jfscy6i4von6/grupo3.png';
                                                    }
                                                  }(),
                                                  texto: 'Grupos',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ),
                                              child: wrapWithModel(
                                                model: _model.btnovoModel14,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/yvptnwxi61y4/medidas.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/9ae0fkzpd471/medidas2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/my09ajy5vkiw/medidas3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/my09ajy5vkiw/medidas3.png';
                                                    }
                                                  }(),
                                                  texto: 'Medidas',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ].divide(const SizedBox(width: 2.0)),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel15,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/jldk0ynoyvpe/transportador.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/zagabhvfa3fq/transportador2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/arhmjy0468i3/transportado3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/arhmjy0468i3/transportado3.png';
                                                }
                                              }(),
                                              texto: 'Transportadoras',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel16,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/p9qra0q88dif/fluxocaixa.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/phkhtc77k1n1/fluxocaixa2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/tp6fttqclwpa/planocontas3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/tp6fttqclwpa/planocontas3.png';
                                                }
                                              }(),
                                              texto: 'Plano de Contas',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel17,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/5jq30ro286d1/pagamentos.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/eomsc0e6gwa7/pagamentos2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dw4r2luntc3j/pagamentos3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/qdxr0igw8oct/clientes2.pnghttps://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dw4r2luntc3j/pagamentos3.png';
                                                }
                                              }(),
                                              texto: 'Pagamentos',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel18,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/ulw7cjjai5fo/agenda.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/icwl806o4cfp/agenda2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/kx769zn0myqq/agenda3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/kx769zn0myqq/agenda3.png';
                                                }
                                              }(),
                                              texto: 'Agenda',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ),
                                              child: wrapWithModel(
                                                model: _model.btnovoModel19,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/schy2f168eom/relatorios.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/fi4pf445o7ka/relatorios2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/wa1qchrxdd2p/relatorios3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/wa1qchrxdd2p/relatorios3.png';
                                                    }
                                                  }(),
                                                  texto: 'Relatórios',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Visibility(
                                              visible: responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                              ),
                                              child: Builder(
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
                                                      builder: (dialogContext) {
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
                                                              GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child:
                                                                EmpresaWidget(
                                                              company: _model
                                                                  .company!,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: wrapWithModel(
                                                    model: _model.btnovoModel20,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: BtnovoWidget(
                                                      imagem: () {
                                                        if (FFAppState()
                                                                .alteraLayout ==
                                                            1) {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/zbe749wuy15q/empresa.png';
                                                        } else if (FFAppState()
                                                                .alteraLayout ==
                                                            2) {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/myextjtpki4i/empresa2.png';
                                                        } else if (FFAppState()
                                                                .alteraLayout ==
                                                            3) {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dsr099pyp7ou/empresa3.png';
                                                        } else {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dsr099pyp7ou/empresa3.png';
                                                        }
                                                      }(),
                                                      texto: 'Empresa',
                                                      corTexto: () {
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
                                                              .cabeca2;
                                                        }
                                                      }(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ].divide(const SizedBox(width: 2.0)),
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel21,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/jw7qgv3h9h93/grupos.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/y4mctsfh2igl/grupos2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/jfscy6i4von6/grupo3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/jfscy6i4von6/grupo3.png';
                                                  }
                                                }(),
                                                texto: 'Grupos',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel22,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/yvptnwxi61y4/medidas.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/9ae0fkzpd471/medidas2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/my09ajy5vkiw/medidas3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/my09ajy5vkiw/medidas3.png';
                                                  }
                                                }(),
                                                texto: 'Medidas',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
                                                }
                                              }(),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: wrapWithModel(
                                              model: _model.btnovoModel23,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: BtnovoWidget(
                                                imagem: () {
                                                  if (FFAppState()
                                                          .alteraLayout ==
                                                      1) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/schy2f168eom/relatorios.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      2) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/fi4pf445o7ka/relatorios2.png';
                                                  } else if (FFAppState()
                                                          .alteraLayout ==
                                                      3) {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/wa1qchrxdd2p/relatorios3.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/wa1qchrxdd2p/relatorios3.png';
                                                  }
                                                }(),
                                                texto: 'Relatórios',
                                                corTexto: () {
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
                                                        .cabeca2;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return const Color(0x26DC3C00);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return const Color(0x26094AB2);
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .fundoIcon;
                                                } else {
                                                  return FlutterFlowTheme.of(
                                                          context)
                                                      .cabeca2;
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
                                                highlightColor:
                                                    Colors.transparent,
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
                                                        child: GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: EmpresaWidget(
                                                            company:
                                                                _model.company!,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: wrapWithModel(
                                                  model: _model.btnovoModel24,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: BtnovoWidget(
                                                    imagem: () {
                                                      if (FFAppState()
                                                              .alteraLayout ==
                                                          1) {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/zbe749wuy15q/empresa.png';
                                                      } else if (FFAppState()
                                                              .alteraLayout ==
                                                          2) {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/myextjtpki4i/empresa2.png';
                                                      } else if (FFAppState()
                                                              .alteraLayout ==
                                                          3) {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dsr099pyp7ou/empresa3.png';
                                                      } else {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dsr099pyp7ou/empresa3.png';
                                                      }
                                                    }(),
                                                    texto: 'Empresa',
                                                    corTexto: () {
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
                                                            .cabeca2;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 2.0)),
                                      ),
                                    ),
                                  ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
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
                                              highlightColor:
                                                  Colors.transparent,
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
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            LiltaPlanosWidget(
                                                          alteraLayout:
                                                              FFAppState()
                                                                  .alteraLayout,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: wrapWithModel(
                                                model: _model.btnovoModel25,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: BtnovoWidget(
                                                  imagem: () {
                                                    if (FFAppState()
                                                            .alteraLayout ==
                                                        1) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/b1tkcicnqd95/Plano.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        2) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/7z8hif2vbcr2/Plano2.png';
                                                    } else if (FFAppState()
                                                            .alteraLayout ==
                                                        3) {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/baljsrqgr592/Plano3.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/baljsrqgr592/Plano3.png';
                                                    }
                                                  }(),
                                                  texto: 'Planos',
                                                  corTexto: () {
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
                                                          .cabeca2;
                                                    }
                                                  }(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Builder(
                                            builder: (context) => Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 2.0, 0.0, 2.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
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
                                                        child: GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: ReciboWidget(
                                                            alteraLayout:
                                                                FFAppState()
                                                                    .alteraLayout,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: wrapWithModel(
                                                  model: _model.btnovoModel26,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: BtnovoWidget(
                                                    imagem: () {
                                                      if (FFAppState()
                                                              .alteraLayout ==
                                                          1) {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/8jzdoddf1zdw/Recibo.png';
                                                      } else if (FFAppState()
                                                              .alteraLayout ==
                                                          2) {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/j1lad622fhoo/Recibo2.png';
                                                      } else if (FFAppState()
                                                              .alteraLayout ==
                                                          3) {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/hpnzps22si8e/Recibo3.png';
                                                      } else {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/hpnzps22si8e/Recibo3.png';
                                                      }
                                                    }(),
                                                    texto: 'Recibo',
                                                    corTexto: () {
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
                                                            .cabeca2;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel27,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/dolp0srgp2p0/Livro2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/tno7oknukee3/Livro.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/zpecjcnv2f7w/livropresenca.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/zpecjcnv2f7w/livropresenca.png';
                                                }
                                              }(),
                                              texto: 'Livro Presença',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel28,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/t0gmmmu96vfr/Camera_Laranja.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/bamfcsggivx0/Camera2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/zyw1537sgkb8/camera3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/zyw1537sgkb8/camera3.png';
                                                }
                                              }(),
                                              texto: 'Cameras',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 2.0)),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel29,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/9su6vveeiz1x/usuarios.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/s1x9dow59531/usuarios2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/eaqd1mojp3a3/usuario.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/eaqd1mojp3a3/usuario.png';
                                                }
                                              }(),
                                              texto: 'Usuários',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel30,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/sj135hc78r7a/permissoes.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/15fyf4qa4n0n/permissoes2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/m1l00fyevtq7/permissoes3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/m1l00fyevtq7/permissoes3.png';
                                                }
                                              }(),
                                              texto: 'Permissões',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel31,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/rdpekznti5hr/auditoria.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/r29nni45ovgu/auditoria2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/2s8jqrmsf635/Auditoria3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/2s8jqrmsf635/Auditoria3.png';
                                                }
                                              }(),
                                              texto: 'Auditoria',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: () {
                                              if (FFAppState().alteraLayout ==
                                                  1) {
                                                return const Color(0x26DC3C00);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  2) {
                                                return const Color(0x26094AB2);
                                              } else if (FFAppState()
                                                      .alteraLayout ==
                                                  3) {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .fundoIcon;
                                              } else {
                                                return FlutterFlowTheme.of(
                                                        context)
                                                    .cabeca2;
                                              }
                                            }(),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: wrapWithModel(
                                            model: _model.btnovoModel32,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: BtnovoWidget(
                                              imagem: () {
                                                if (FFAppState().alteraLayout ==
                                                    1) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/69mdgeyuwutm/dashboard.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    2) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/menu-web-6ue2cn/assets/xwu4i3kepprn/dashboard2.png';
                                                } else if (FFAppState()
                                                        .alteraLayout ==
                                                    3) {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/fx3a4hbmp6un/dashboad3.png';
                                                } else {
                                                  return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/fx3a4hbmp6un/dashboad3.png';
                                                }
                                              }(),
                                              texto: 'Deashboard',
                                              corTexto: () {
                                                if (FFAppState().alteraLayout ==
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
                                                      .cabeca2;
                                                }
                                              }(),
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
                            tabletLandscape: false,
                          ))
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plenitude-system-g-e-prime-vrkyat/assets/977uhvwc1lzt/graf.png',
                                  width: 300.0,
                                  fit: BoxFit.fill,
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
        ));
  }
}
