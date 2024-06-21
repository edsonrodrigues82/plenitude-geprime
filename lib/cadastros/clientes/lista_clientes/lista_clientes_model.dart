import '/backend/supabase/supabase.dart';
import '/botoes/bt_geral/bt_geral_widget.dart';
import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/botoes/cabeca_de_janelas/cabeca_de_janelas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'lista_clientes_widget.dart' show ListaClientesWidget;
import 'package:flutter/material.dart';

class ListaClientesModel extends FlutterFlowModel<ListaClientesWidget> {
  ///  Local state fields for this component.

  ClientesRow? clienteSelecionado;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in listaClientes widget.
  List<ClientesRow>? respostaClientes;
  Completer<List<DependentesRow>>? requestCompleter1;
  // Model for CabecaDeJanelas component.
  late CabecaDeJanelasModel cabecaDeJanelasModel;
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
  // Model for btGeral component.
  late BtGeralModel btGeralModel1;
  // Model for btGeral component.
  late BtGeralModel btGeralModel2;
  Completer<List<ClientesRow>>? requestCompleter2;
  // Model for btGeral component.
  late BtGeralModel btGeralModel3;
  // Model for btGeral component.
  late BtGeralModel btGeralModel4;
  // Model for btGeral component.
  late BtGeralModel btGeralModel5;
  // Model for btGeral component.
  late BtGeralModel btGeralModel6;

  @override
  void initState(BuildContext context) {
    cabecaDeJanelasModel = createModel(context, () => CabecaDeJanelasModel());
    btGeralSemTextoModel1 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel2 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel3 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel4 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel5 = createModel(context, () => BtGeralSemTextoModel());
    btGeralSemTextoModel6 = createModel(context, () => BtGeralSemTextoModel());
    btGeralModel1 = createModel(context, () => BtGeralModel());
    btGeralModel2 = createModel(context, () => BtGeralModel());
    btGeralModel3 = createModel(context, () => BtGeralModel());
    btGeralModel4 = createModel(context, () => BtGeralModel());
    btGeralModel5 = createModel(context, () => BtGeralModel());
    btGeralModel6 = createModel(context, () => BtGeralModel());
  }

  @override
  void dispose() {
    cabecaDeJanelasModel.dispose();
    btGeralSemTextoModel1.dispose();
    btGeralSemTextoModel2.dispose();
    btGeralSemTextoModel3.dispose();
    btGeralSemTextoModel4.dispose();
    btGeralSemTextoModel5.dispose();
    btGeralSemTextoModel6.dispose();
    btGeralModel1.dispose();
    btGeralModel2.dispose();
    btGeralModel3.dispose();
    btGeralModel4.dispose();
    btGeralModel5.dispose();
    btGeralModel6.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
