import '../database.dart';

class BeneficiosPlanFunTable extends SupabaseTable<BeneficiosPlanFunRow> {
  @override
  String get tableName => 'beneficiosPlanFun';

  @override
  BeneficiosPlanFunRow createRow(Map<String, dynamic> data) =>
      BeneficiosPlanFunRow(data);
}

class BeneficiosPlanFunRow extends SupabaseDataRow {
  BeneficiosPlanFunRow(super.data);

  @override
  SupabaseTable get table => BeneficiosPlanFunTable();

  int get idBeneficios => getField<int>('id_beneficios')!;
  set idBeneficios(int value) => setField<int>('id_beneficios', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get bneficio => getField<String>('bneficio');
  set bneficio(String? value) => setField<String>('bneficio', value);

  int? get idPlanFun => getField<int>('id_planFun');
  set idPlanFun(int? value) => setField<int>('id_planFun', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
