import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/botoes/btnovo/btnovo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_principal_widget.dart' show MenuPrincipalWidget;
import 'package:flutter/material.dart';

class MenuPrincipalModel extends FlutterFlowModel<MenuPrincipalWidget> {
  ///  Local state fields for this page.

  EmpresaRow? company;

  UsuariosRow? userName;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for btClientesMob.
  late BtnovoModel btClientesMobModel;
  // Model for btFornecedores.
  late BtnovoModel btFornecedoresModel;
  // Model for btProdutos.
  late BtnovoModel btProdutosModel;
  // Model for btnContratos.
  late BtnovoModel btnContratosModel;
  // Model for btnovo component.
  late BtnovoModel btnovoModel1;
  // Model for btnovo component.
  late BtnovoModel btnovoModel2;
  // Model for btnovo component.
  late BtnovoModel btnovoModel3;
  // Model for btnovo component.
  late BtnovoModel btnovoModel4;
  // Model for btnovo component.
  late BtnovoModel btnovoModel5;
  // Model for btnovo component.
  late BtnovoModel btnovoModel6;
  // Model for btnovo component.
  late BtnovoModel btnovoModel7;
  // Model for btnovo component.
  late BtnovoModel btnovoModel8;
  // Model for btnovo component.
  late BtnovoModel btnovoModel9;
  // Model for btnovo component.
  late BtnovoModel btnovoModel10;
  // Model for btnovo component.
  late BtnovoModel btnovoModel11;
  // Model for btnovo component.
  late BtnovoModel btnovoModel12;
  // Model for btnovo component.
  late BtnovoModel btnovoModel13;
  // Model for btnovo component.
  late BtnovoModel btnovoModel14;
  // Model for btnovo component.
  late BtnovoModel btnovoModel15;
  // Model for btnovo component.
  late BtnovoModel btnovoModel16;
  // Model for btnovo component.
  late BtnovoModel btnovoModel17;
  // Model for btnovo component.
  late BtnovoModel btnovoModel18;
  // Model for btnovo component.
  late BtnovoModel btnovoModel19;
  // Model for btnovo component.
  late BtnovoModel btnovoModel20;
  // Model for btnovo component.
  late BtnovoModel btnovoModel21;
  // Model for btnovo component.
  late BtnovoModel btnovoModel22;
  // Model for btnovo component.
  late BtnovoModel btnovoModel23;
  // Model for btnovo component.
  late BtnovoModel btnovoModel24;
  // Model for btnovo component.
  late BtnovoModel btnovoModel25;
  // Model for btnovo component.
  late BtnovoModel btnovoModel26;
  // Model for btnovo component.
  late BtnovoModel btnovoModel27;
  // Model for btnovo component.
  late BtnovoModel btnovoModel28;
  // Model for btnovo component.
  late BtnovoModel btnovoModel29;
  // Model for btnovo component.
  late BtnovoModel btnovoModel30;
  // Model for btnovo component.
  late BtnovoModel btnovoModel31;
  // Model for btnovo component.
  late BtnovoModel btnovoModel32;

  @override
  void initState(BuildContext context) {
    btClientesMobModel = createModel(context, () => BtnovoModel());
    btFornecedoresModel = createModel(context, () => BtnovoModel());
    btProdutosModel = createModel(context, () => BtnovoModel());
    btnContratosModel = createModel(context, () => BtnovoModel());
    btnovoModel1 = createModel(context, () => BtnovoModel());
    btnovoModel2 = createModel(context, () => BtnovoModel());
    btnovoModel3 = createModel(context, () => BtnovoModel());
    btnovoModel4 = createModel(context, () => BtnovoModel());
    btnovoModel5 = createModel(context, () => BtnovoModel());
    btnovoModel6 = createModel(context, () => BtnovoModel());
    btnovoModel7 = createModel(context, () => BtnovoModel());
    btnovoModel8 = createModel(context, () => BtnovoModel());
    btnovoModel9 = createModel(context, () => BtnovoModel());
    btnovoModel10 = createModel(context, () => BtnovoModel());
    btnovoModel11 = createModel(context, () => BtnovoModel());
    btnovoModel12 = createModel(context, () => BtnovoModel());
    btnovoModel13 = createModel(context, () => BtnovoModel());
    btnovoModel14 = createModel(context, () => BtnovoModel());
    btnovoModel15 = createModel(context, () => BtnovoModel());
    btnovoModel16 = createModel(context, () => BtnovoModel());
    btnovoModel17 = createModel(context, () => BtnovoModel());
    btnovoModel18 = createModel(context, () => BtnovoModel());
    btnovoModel19 = createModel(context, () => BtnovoModel());
    btnovoModel20 = createModel(context, () => BtnovoModel());
    btnovoModel21 = createModel(context, () => BtnovoModel());
    btnovoModel22 = createModel(context, () => BtnovoModel());
    btnovoModel23 = createModel(context, () => BtnovoModel());
    btnovoModel24 = createModel(context, () => BtnovoModel());
    btnovoModel25 = createModel(context, () => BtnovoModel());
    btnovoModel26 = createModel(context, () => BtnovoModel());
    btnovoModel27 = createModel(context, () => BtnovoModel());
    btnovoModel28 = createModel(context, () => BtnovoModel());
    btnovoModel29 = createModel(context, () => BtnovoModel());
    btnovoModel30 = createModel(context, () => BtnovoModel());
    btnovoModel31 = createModel(context, () => BtnovoModel());
    btnovoModel32 = createModel(context, () => BtnovoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    btClientesMobModel.dispose();
    btFornecedoresModel.dispose();
    btProdutosModel.dispose();
    btnContratosModel.dispose();
    btnovoModel1.dispose();
    btnovoModel2.dispose();
    btnovoModel3.dispose();
    btnovoModel4.dispose();
    btnovoModel5.dispose();
    btnovoModel6.dispose();
    btnovoModel7.dispose();
    btnovoModel8.dispose();
    btnovoModel9.dispose();
    btnovoModel10.dispose();
    btnovoModel11.dispose();
    btnovoModel12.dispose();
    btnovoModel13.dispose();
    btnovoModel14.dispose();
    btnovoModel15.dispose();
    btnovoModel16.dispose();
    btnovoModel17.dispose();
    btnovoModel18.dispose();
    btnovoModel19.dispose();
    btnovoModel20.dispose();
    btnovoModel21.dispose();
    btnovoModel22.dispose();
    btnovoModel23.dispose();
    btnovoModel24.dispose();
    btnovoModel25.dispose();
    btnovoModel26.dispose();
    btnovoModel27.dispose();
    btnovoModel28.dispose();
    btnovoModel29.dispose();
    btnovoModel30.dispose();
    btnovoModel31.dispose();
    btnovoModel32.dispose();
  }

  /// Action blocks.
  Future searchUserCompany(BuildContext context) async {
    List<UsuariosRow>? outUser;
    List<EmpresaRow>? outCompany;

    outUser = await UsuariosTable().queryRows(
      queryFn: (q) => q.eq(
        'user_id',
        currentUserUid,
      ),
    );
    outCompany = await EmpresaTable().queryRows(
      queryFn: (q) => q.eq(
        'id',
        outUser?.first.empresaId,
      ),
    );
    userName = outUser.first;
    company = outCompany.first;
  }
}
