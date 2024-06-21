import '/backend/schema/structs/index.dart';
import '/botoes/bt_geral/bt_geral_widget.dart';
import '/botoes/bt_geral_maior/bt_geral_maior_widget.dart';
import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/botoes/cabeca_de_janelas/cabeca_de_janelas_widget.dart';
import '/contrato/comp_sub_janelas/exibe_contratos/exibe_contratos_widget.dart';
import '/contrato/comp_sub_janelas/exibe_parcelas_desktop/exibe_parcelas_desktop_widget.dart';
import '/contrato/comp_sub_janelas/exibe_parcelas_e_contrato/exibe_parcelas_e_contrato_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contratos_widget.dart' show ContratosWidget;
import 'package:flutter/material.dart';

class ContratosModel extends FlutterFlowModel<ContratosWidget> {
  ///  Local state fields for this component.

  List<ContratosStruct> selecionado = [];
  void addToSelecionado(ContratosStruct item) => selecionado.add(item);
  void removeFromSelecionado(ContratosStruct item) => selecionado.remove(item);
  void removeAtIndexFromSelecionado(int index) => selecionado.removeAt(index);
  void insertAtIndexInSelecionado(int index, ContratosStruct item) =>
      selecionado.insert(index, item);
  void updateSelecionadoAtIndex(
          int index, Function(ContratosStruct) updateFn) =>
      selecionado[index] = updateFn(selecionado[index]);

  List<ContratosStruct> avalidado = [];
  void addToAvalidado(ContratosStruct item) => avalidado.add(item);
  void removeFromAvalidado(ContratosStruct item) => avalidado.remove(item);
  void removeAtIndexFromAvalidado(int index) => avalidado.removeAt(index);
  void insertAtIndexInAvalidado(int index, ContratosStruct item) =>
      avalidado.insert(index, item);
  void updateAvalidadoAtIndex(int index, Function(ContratosStruct) updateFn) =>
      avalidado[index] = updateFn(avalidado[index]);

  ///  State fields for stateful widgets in this component.

  // Model for CabecaDeJanelas component.
  late CabecaDeJanelasModel cabecaDeJanelasModel;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode1;
  TextEditingController? localizarRegistrosTextController1;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController1Validator;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode2;
  TextEditingController? localizarRegistrosTextController2;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController2Validator;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode3;
  TextEditingController? localizarRegistrosTextController3;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController3Validator;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode4;
  TextEditingController? localizarRegistrosTextController4;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController4Validator;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode5;
  TextEditingController? localizarRegistrosTextController5;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController5Validator;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode6;
  TextEditingController? localizarRegistrosTextController6;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController6Validator;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode7;
  TextEditingController? localizarRegistrosTextController7;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController7Validator;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode8;
  TextEditingController? localizarRegistrosTextController8;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController8Validator;
  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode9;
  TextEditingController? localizarRegistrosTextController9;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextController9Validator;
  // Model for btGeralMaior component.
  late BtGeralMaiorModel btGeralMaiorModel1;
  // Model for btGeral component.
  late BtGeralModel btGeralModel1;
  // Model for exibeParcelasEContrato component.
  late ExibeParcelasEContratoModel exibeParcelasEContratoModel;
  // Model for exibeContratos component.
  late ExibeContratosModel exibeContratosModel;
  // Model for exibeParcelasDesktop component.
  late ExibeParcelasDesktopModel exibeParcelasDesktopModel;
  // Model for btGeral component.
  late BtGeralModel btGeralModel2;
  // Model for btGeral component.
  late BtGeralModel btGeralModel3;
  // Model for btGeral component.
  late BtGeralModel btGeralModel4;
  // Model for btGeralMaior component.
  late BtGeralMaiorModel btGeralMaiorModel2;
  // Model for btGeral component.
  late BtGeralModel btGeralModel5;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel1;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel2;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel3;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel4;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel5;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel6;

  @override
  void initState(BuildContext context) {
    cabecaDeJanelasModel = createModel(context, () => CabecaDeJanelasModel());
    btGeralMaiorModel1 = createModel(context, () => BtGeralMaiorModel());
    btGeralModel1 = createModel(context, () => BtGeralModel());
    exibeParcelasEContratoModel =
        createModel(context, () => ExibeParcelasEContratoModel());
    exibeContratosModel = createModel(context, () => ExibeContratosModel());
    exibeParcelasDesktopModel =
        createModel(context, () => ExibeParcelasDesktopModel());
    btGeralModel2 = createModel(context, () => BtGeralModel());
    btGeralModel3 = createModel(context, () => BtGeralModel());
    btGeralModel4 = createModel(context, () => BtGeralModel());
    btGeralMaiorModel2 = createModel(context, () => BtGeralMaiorModel());
    btGeralModel5 = createModel(context, () => BtGeralModel());
    btGeralSemTextoModel1 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel2 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel3 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel4 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel5 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel6 = createModel(context, () => BtGeralSemTextoModel());
  }

  @override
  void dispose() {
    cabecaDeJanelasModel.dispose();
    localizarRegistrosFocusNode1?.dispose();
    localizarRegistrosTextController1?.dispose();

    localizarRegistrosFocusNode2?.dispose();
    localizarRegistrosTextController2?.dispose();

    localizarRegistrosFocusNode3?.dispose();
    localizarRegistrosTextController3?.dispose();

    localizarRegistrosFocusNode4?.dispose();
    localizarRegistrosTextController4?.dispose();

    localizarRegistrosFocusNode5?.dispose();
    localizarRegistrosTextController5?.dispose();

    localizarRegistrosFocusNode6?.dispose();
    localizarRegistrosTextController6?.dispose();

    localizarRegistrosFocusNode7?.dispose();
    localizarRegistrosTextController7?.dispose();

    localizarRegistrosFocusNode8?.dispose();
    localizarRegistrosTextController8?.dispose();

    localizarRegistrosFocusNode9?.dispose();
    localizarRegistrosTextController9?.dispose();

    btGeralMaiorModel1.dispose();
    btGeralModel1.dispose();
    exibeParcelasEContratoModel.dispose();
    exibeContratosModel.dispose();
    exibeParcelasDesktopModel.dispose();
    btGeralModel2.dispose();
    btGeralModel3.dispose();
    btGeralModel4.dispose();
    btGeralMaiorModel2.dispose();
    btGeralModel5.dispose();
    btGeralSemTextoModel1.dispose();
    btGeralSemTextoModel2.dispose();
    btGeralSemTextoModel3.dispose();
    btGeralSemTextoModel4.dispose();
    btGeralSemTextoModel5.dispose();
    btGeralSemTextoModel6.dispose();
  }
}
