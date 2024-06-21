import '/botoes/bt_geral/bt_geral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'empresa_widget.dart' show EmpresaWidget;
import 'package:flutter/material.dart';

class EmpresaModel extends FlutterFlowModel<EmpresaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Fantasia widget.
  FocusNode? fantasiaFocusNode;
  TextEditingController? fantasiaTextController;
  String? Function(BuildContext, String?)? fantasiaTextControllerValidator;
  // State field(s) for Razao widget.
  FocusNode? razaoFocusNode;
  TextEditingController? razaoTextController;
  String? Function(BuildContext, String?)? razaoTextControllerValidator;
  // State field(s) for CNPJ widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjTextController;
  String? Function(BuildContext, String?)? cnpjTextControllerValidator;
  // State field(s) for Inscricao widget.
  FocusNode? inscricaoFocusNode;
  TextEditingController? inscricaoTextController;
  String? Function(BuildContext, String?)? inscricaoTextControllerValidator;
  // State field(s) for Endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  // State field(s) for Num widget.
  FocusNode? numFocusNode;
  TextEditingController? numTextController;
  String? Function(BuildContext, String?)? numTextControllerValidator;
  // State field(s) for Bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for UF widget.
  String? ufValue;
  FormFieldController<String>? ufValueController;
  // State field(s) for Cidade widget.
  String? cidadeValue;
  FormFieldController<String>? cidadeValueController;
  // State field(s) for Fone widget.
  FocusNode? foneFocusNode;
  TextEditingController? foneTextController;
  String? Function(BuildContext, String?)? foneTextControllerValidator;
  // State field(s) for Cel widget.
  FocusNode? celFocusNode;
  TextEditingController? celTextController;
  String? Function(BuildContext, String?)? celTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // Model for btGeral component.
  late BtGeralModel btGeralModel;

  @override
  void initState(BuildContext context) {
    btGeralModel = createModel(context, () => BtGeralModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    fantasiaFocusNode?.dispose();
    fantasiaTextController?.dispose();

    razaoFocusNode?.dispose();
    razaoTextController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjTextController?.dispose();

    inscricaoFocusNode?.dispose();
    inscricaoTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    numFocusNode?.dispose();
    numTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    foneFocusNode?.dispose();
    foneTextController?.dispose();

    celFocusNode?.dispose();
    celTextController?.dispose();

    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();

    btGeralModel.dispose();
  }
}
