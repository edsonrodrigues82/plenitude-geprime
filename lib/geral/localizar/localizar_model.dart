import '/botoes/bt_geral_maior/bt_geral_maior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'localizar_widget.dart' show LocalizarWidget;
import 'package:flutter/material.dart';

class LocalizarModel extends FlutterFlowModel<LocalizarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for LocalizarRegistros widget.
  FocusNode? localizarRegistrosFocusNode;
  TextEditingController? localizarRegistrosTextController;
  String? Function(BuildContext, String?)?
      localizarRegistrosTextControllerValidator;
  // Model for btGeralMaior component.
  late BtGeralMaiorModel btGeralMaiorModel1;
  // Model for btGeralMaior component.
  late BtGeralMaiorModel btGeralMaiorModel2;

  @override
  void initState(BuildContext context) {
    btGeralMaiorModel1 = createModel(context, () => BtGeralMaiorModel());
    btGeralMaiorModel2 = createModel(context, () => BtGeralMaiorModel());
  }

  @override
  void dispose() {
    localizarRegistrosFocusNode?.dispose();
    localizarRegistrosTextController?.dispose();

    btGeralMaiorModel1.dispose();
    btGeralMaiorModel2.dispose();
  }
}
