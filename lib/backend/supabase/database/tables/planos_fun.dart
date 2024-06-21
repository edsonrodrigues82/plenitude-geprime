import '../database.dart';

class PlanosFunTable extends SupabaseTable<PlanosFunRow> {
  @override
  String get tableName => 'planosFun';

  @override
  PlanosFunRow createRow(Map<String, dynamic> data) => PlanosFunRow(data);
}

class PlanosFunRow extends SupabaseDataRow {
  PlanosFunRow(super.data);

  @override
  SupabaseTable get table => PlanosFunTable();

  int get idPlanFun => getField<int>('id_planFun')!;
  set idPlanFun(int value) => setField<int>('id_planFun', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idPlan => getField<String>('idPlan');
  set idPlan(String? value) => setField<String>('idPlan', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get nomePlano => getField<String>('nomePlano');
  set nomePlano(String? value) => setField<String>('nomePlano', value);

  double? get valorMens => getField<double>('valorMens');
  set valorMens(double? value) => setField<double>('valorMens', value);

  int? get qtdIdosos => getField<int>('QtdIdosos');
  set qtdIdosos(int? value) => setField<int>('QtdIdosos', value);

  int? get qtdBeneficiarios => getField<int>('QtdBeneficiarios');
  set qtdBeneficiarios(int? value) => setField<int>('QtdBeneficiarios', value);

  int? get carenciaTitular => getField<int>('CarenciaTitular');
  set carenciaTitular(int? value) => setField<int>('CarenciaTitular', value);

  int? get carenciaDependente => getField<int>('CarenciaDependente');
  set carenciaDependente(int? value) =>
      setField<int>('CarenciaDependente', value);

  double? get adicionalIdoso => getField<double>('AdicionalIdoso');
  set adicionalIdoso(double? value) =>
      setField<double>('AdicionalIdoso', value);

  double? get adicionalBeneficiario =>
      getField<double>('AdicionalBeneficiario');
  set adicionalBeneficiario(double? value) =>
      setField<double>('AdicionalBeneficiario', value);

  int? get carenciaMatConvalecente => getField<int>('CarenciaMatConvalecente');
  set carenciaMatConvalecente(int? value) =>
      setField<int>('CarenciaMatConvalecente', value);

  DateTime? get dataCriacao => getField<DateTime>('DataCriacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('DataCriacao', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
