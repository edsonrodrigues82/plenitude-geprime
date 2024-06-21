import '/botoes/bt_geral/bt_geral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_dependentes_widget.dart' show AddDependentesWidget;
import 'package:flutter/material.dart';

class AddDependentesModel extends FlutterFlowModel<AddDependentesWidget> {
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
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode11;
  TextEditingController? localizarTextController11;
  String? Function(BuildContext, String?)? localizarTextController11Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode12;
  TextEditingController? localizarTextController12;
  String? Function(BuildContext, String?)? localizarTextController12Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode13;
  TextEditingController? localizarTextController13;
  String? Function(BuildContext, String?)? localizarTextController13Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode14;
  TextEditingController? localizarTextController14;
  String? Function(BuildContext, String?)? localizarTextController14Validator;
  // State field(s) for Localizar widget.
  FocusNode? localizarFocusNode15;
  TextEditingController? localizarTextController15;
  String? Function(BuildContext, String?)? localizarTextController15Validator;
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

    localizarFocusNode7?.dispose();
    localizarTextController7?.dispose();

    localizarFocusNode8?.dispose();
    localizarTextController8?.dispose();

    localizarFocusNode9?.dispose();
    localizarTextController9?.dispose();

    localizarFocusNode10?.dispose();
    localizarTextController10?.dispose();

    localizarFocusNode11?.dispose();
    localizarTextController11?.dispose();

    localizarFocusNode12?.dispose();
    localizarTextController12?.dispose();

    localizarFocusNode13?.dispose();
    localizarTextController13?.dispose();

    localizarFocusNode14?.dispose();
    localizarTextController14?.dispose();

    localizarFocusNode15?.dispose();
    localizarTextController15?.dispose();

    btGeralModel1.dispose();
    btGeralModel2.dispose();
  }
}
