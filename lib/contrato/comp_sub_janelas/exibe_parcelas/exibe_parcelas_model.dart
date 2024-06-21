import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exibe_parcelas_widget.dart' show ExibeParcelasWidget;
import 'package:flutter/material.dart';

class ExibeParcelasModel extends FlutterFlowModel<ExibeParcelasWidget> {
  ///  Local state fields for this component.

  int? alteraLayout;

  ///  State fields for stateful widgets in this component.

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
    btGeralSemTextoModel1 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel2 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel3 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel4 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel5 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel6 = createModel(context, () => BtGeralSemTextoModel());
  }

  @override
  void dispose() {
    btGeralSemTextoModel1.dispose();
    btGeralSemTextoModel2.dispose();
    btGeralSemTextoModel3.dispose();
    btGeralSemTextoModel4.dispose();
    btGeralSemTextoModel5.dispose();
    btGeralSemTextoModel6.dispose();
  }
}
