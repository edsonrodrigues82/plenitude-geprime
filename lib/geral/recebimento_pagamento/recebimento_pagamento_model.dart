import '/botoes/bt_geral/bt_geral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recebimento_pagamento_widget.dart' show RecebimentoPagamentoWidget;
import 'package:flutter/material.dart';

class RecebimentoPagamentoModel
    extends FlutterFlowModel<RecebimentoPagamentoWidget> {
  ///  Local state fields for this component.

  bool? ativoSN = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode1;
  TextEditingController? localizarTextController1;
  String? Function(BuildContext, String?)? localizarTextController1Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode2;
  TextEditingController? localizarTextController2;
  String? Function(BuildContext, String?)? localizarTextController2Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode3;
  TextEditingController? localizarTextController3;
  String? Function(BuildContext, String?)? localizarTextController3Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode4;
  TextEditingController? localizarTextController4;
  String? Function(BuildContext, String?)? localizarTextController4Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode5;
  TextEditingController? localizarTextController5;
  String? Function(BuildContext, String?)? localizarTextController5Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode6;
  TextEditingController? localizarTextController6;
  String? Function(BuildContext, String?)? localizarTextController6Validator;
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
    localizarFocusNode1?.dispose();
    localizarTextController1?.dispose();

    localizarFocusNode2?.dispose();
    localizarTextController2?.dispose();

    localizarFocusNode3?.dispose();
    localizarTextController3?.dispose();

    localizarFocusNode4?.dispose();
    localizarTextController4?.dispose();

    localizarFocusNode5?.dispose();
    localizarTextController5?.dispose();

    localizarFocusNode6?.dispose();
    localizarTextController6?.dispose();

    btGeralModel1.dispose();
    btGeralModel2.dispose();
  }
}
