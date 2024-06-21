import '/backend/api_requests/api_calls.dart';
import '/botoes/bt_geral/bt_geral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_fornecedores_widget.dart' show AddFornecedoresWidget;
import 'package:flutter/material.dart';

class AddFornecedoresModel extends FlutterFlowModel<AddFornecedoresWidget> {
  ///  Local state fields for this component.

  bool? ativoSN = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Fornecedor widget.
  FocusNode? fornecedorFocusNode;
  TextEditingController? fornecedorTextController;
  String? Function(BuildContext, String?)? fornecedorTextControllerValidator;
  // State field(s) for Fantasia widget.
  FocusNode? fantasiaFocusNode;
  TextEditingController? fantasiaTextController;
  String? Function(BuildContext, String?)? fantasiaTextControllerValidator;
  // State field(s) for Contato widget.
  FocusNode? contatoFocusNode;
  TextEditingController? contatoTextController;
  String? Function(BuildContext, String?)? contatoTextControllerValidator;
  // State field(s) for End widget.
  FocusNode? endFocusNode;
  TextEditingController? endTextController;
  String? Function(BuildContext, String?)? endTextControllerValidator;
  // State field(s) for Num widget.
  FocusNode? numFocusNode;
  TextEditingController? numTextController;
  String? Function(BuildContext, String?)? numTextControllerValidator;
  // State field(s) for Bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for UF widget.
  FocusNode? ufFocusNode;
  TextEditingController? ufTextController;
  String? Function(BuildContext, String?)? ufTextControllerValidator;
  // State field(s) for Cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for Complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoTextController;
  String? Function(BuildContext, String?)? complementoTextControllerValidator;
  // State field(s) for Cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for CNPJCPF widget.
  FocusNode? cnpjcpfFocusNode;
  TextEditingController? cnpjcpfTextController;
  String? Function(BuildContext, String?)? cnpjcpfTextControllerValidator;
  // Stores action output result for [Backend Call - API (buscaCNPJ)] action in Icon widget.
  ApiCallResponse? apiBuscaCNPJ;
  // State field(s) for IERG widget.
  FocusNode? iergFocusNode;
  TextEditingController? iergTextController;
  String? Function(BuildContext, String?)? iergTextControllerValidator;
  // State field(s) for Fone widget.
  FocusNode? foneFocusNode;
  TextEditingController? foneTextController;
  String? Function(BuildContext, String?)? foneTextControllerValidator;
  // Model for btGeral component.
  late BtGeralModel btGeralModel1;
  // Model for btGeral component.
  late BtGeralModel btGeralModel2;

  @override
  void initState(BuildContext context) {
    btGeralModel1 = createModel(context, () => BtGeralModel());
    btGeralModel2 = createModel(context, () => BtGeralModel());
  }

  @override
  void dispose() {
    fornecedorFocusNode?.dispose();
    fornecedorTextController?.dispose();

    fantasiaFocusNode?.dispose();
    fantasiaTextController?.dispose();

    contatoFocusNode?.dispose();
    contatoTextController?.dispose();

    endFocusNode?.dispose();
    endTextController?.dispose();

    numFocusNode?.dispose();
    numTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    ufFocusNode?.dispose();
    ufTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    complementoFocusNode?.dispose();
    complementoTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    cnpjcpfFocusNode?.dispose();
    cnpjcpfTextController?.dispose();

    iergFocusNode?.dispose();
    iergTextController?.dispose();

    foneFocusNode?.dispose();
    foneTextController?.dispose();

    btGeralModel1.dispose();
    btGeralModel2.dispose();
  }
}
