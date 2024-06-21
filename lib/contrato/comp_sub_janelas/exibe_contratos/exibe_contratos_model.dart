import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exibe_contratos_widget.dart' show ExibeContratosWidget;
import 'package:flutter/material.dart';

class ExibeContratosModel extends FlutterFlowModel<ExibeContratosWidget> {
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

  @override
  void initState(BuildContext context) {
    btGeralSemTextoModel1 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel2 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel3 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel4 = createModel(context, () => BtGeralSemTextoModel());
  }

  @override
  void dispose() {
    btGeralSemTextoModel1.dispose();
    btGeralSemTextoModel2.dispose();
    btGeralSemTextoModel3.dispose();
    btGeralSemTextoModel4.dispose();
  }
}
