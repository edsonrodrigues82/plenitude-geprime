import '/botoes/bt_geral/bt_geral_widget.dart';
import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/botoes/cabeca_de_janelas/cabeca_de_janelas_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lilta_planos_widget.dart' show LiltaPlanosWidget;
import 'package:flutter/material.dart';

class LiltaPlanosModel extends FlutterFlowModel<LiltaPlanosWidget> {
  ///  Local state fields for this component.

  bool ativoSN = true;

  ///  State fields for stateful widgets in this component.

  // Model for CabecaDeJanelas component.
  late CabecaDeJanelasModel cabecaDeJanelasModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();
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
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode7;
  TextEditingController? localizarTextController7;
  String? Function(BuildContext, String?)? localizarTextController7Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode8;
  TextEditingController? localizarTextController8;
  String? Function(BuildContext, String?)? localizarTextController8Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode9;
  TextEditingController? localizarTextController9;
  String? Function(BuildContext, String?)? localizarTextController9Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode10;
  TextEditingController? localizarTextController10;
  String? Function(BuildContext, String?)? localizarTextController10Validator;
  // Model for btGeral component.
  late BtGeralModel btGeralModel;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel;

  @override
  void initState(BuildContext context) {
    cabecaDeJanelasModel = createModel(context, () => CabecaDeJanelasModel());
    btGeralModel = createModel(context, () => BtGeralModel());
    btGeralSemTextoModel = createModel(context, () => BtGeralSemTextoModel());
  }

  @override
  void dispose() {
    cabecaDeJanelasModel.dispose();
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

    localizarFocusNode7?.dispose();
    localizarTextController7?.dispose();

    localizarFocusNode8?.dispose();
    localizarTextController8?.dispose();

    localizarFocusNode9?.dispose();
    localizarTextController9?.dispose();

    localizarFocusNode10?.dispose();
    localizarTextController10?.dispose();

    btGeralModel.dispose();
    btGeralSemTextoModel.dispose();
  }
}
