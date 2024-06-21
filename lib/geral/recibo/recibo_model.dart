import '/botoes/bt_geral_maior/bt_geral_maior_widget.dart';
import '/botoes/cabeca_de_janelas/cabeca_de_janelas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recibo_widget.dart' show ReciboWidget;
import 'package:flutter/material.dart';

class ReciboModel extends FlutterFlowModel<ReciboWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CabecaDeJanelas component.
  late CabecaDeJanelasModel cabecaDeJanelasModel;
  // State field(s) for Pessoa widget.
  FocusNode? pessoaFocusNode;
  TextEditingController? pessoaTextController;
  String? Function(BuildContext, String?)? pessoaTextControllerValidator;
  // State field(s) for Valor widget.
  FocusNode? valorFocusNode;
  TextEditingController? valorTextController;
  String? Function(BuildContext, String?)? valorTextControllerValidator;
  // State field(s) for Texto widget.
  FocusNode? textoFocusNode;
  TextEditingController? textoTextController;
  String? Function(BuildContext, String?)? textoTextControllerValidator;
  // Model for btGeralMaior component.
  late BtGeralMaiorModel btGeralMaiorModel1;
  // Model for btGeralMaior component.
  late BtGeralMaiorModel btGeralMaiorModel2;

  @override
  void initState(BuildContext context) {
    cabecaDeJanelasModel = createModel(context, () => CabecaDeJanelasModel());
    btGeralMaiorModel1 = createModel(context, () => BtGeralMaiorModel());
    btGeralMaiorModel2 = createModel(context, () => BtGeralMaiorModel());
  }

  @override
  void dispose() {
    cabecaDeJanelasModel.dispose();
    pessoaFocusNode?.dispose();
    pessoaTextController?.dispose();

    valorFocusNode?.dispose();
    valorTextController?.dispose();

    textoFocusNode?.dispose();
    textoTextController?.dispose();

    btGeralMaiorModel1.dispose();
    btGeralMaiorModel2.dispose();
  }
}
