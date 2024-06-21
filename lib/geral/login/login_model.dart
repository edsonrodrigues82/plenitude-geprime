import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for e-mail widget.
  FocusNode? eMailFocusNode;
  TextEditingController? eMailTextController;
  String? Function(BuildContext, String?)? eMailTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for criaEmpresa widget.
  FocusNode? criaEmpresaFocusNode;
  TextEditingController? criaEmpresaTextController;
  String? Function(BuildContext, String?)? criaEmpresaTextControllerValidator;
  // State field(s) for criaEmail widget.
  FocusNode? criaEmailFocusNode;
  TextEditingController? criaEmailTextController;
  String? Function(BuildContext, String?)? criaEmailTextControllerValidator;
  // State field(s) for criaSenha widget.
  FocusNode? criaSenhaFocusNode;
  TextEditingController? criaSenhaTextController;
  late bool criaSenhaVisibility;
  String? Function(BuildContext, String?)? criaSenhaTextControllerValidator;
  // State field(s) for criaConfSenha widget.
  FocusNode? criaConfSenhaFocusNode;
  TextEditingController? criaConfSenhaTextController;
  late bool criaConfSenhaVisibility;
  String? Function(BuildContext, String?)? criaConfSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    criaSenhaVisibility = false;
    criaConfSenhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    eMailFocusNode?.dispose();
    eMailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    criaEmpresaFocusNode?.dispose();
    criaEmpresaTextController?.dispose();

    criaEmailFocusNode?.dispose();
    criaEmailTextController?.dispose();

    criaSenhaFocusNode?.dispose();
    criaSenhaTextController?.dispose();

    criaConfSenhaFocusNode?.dispose();
    criaConfSenhaTextController?.dispose();
  }
}
