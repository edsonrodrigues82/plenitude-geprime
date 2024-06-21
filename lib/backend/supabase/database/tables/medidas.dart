import '../database.dart';

class MedidasTable extends SupabaseTable<MedidasRow> {
  @override
  String get tableName => 'medidas';

  @override
  MedidasRow createRow(Map<String, dynamic> data) => MedidasRow(data);
}

class MedidasRow extends SupabaseDataRow {
  MedidasRow(super.data);

  @override
  SupabaseTable get table => MedidasTable();

  int get idMedida => getField<int>('id_medida')!;
  set idMedida(int value) => setField<int>('id_medida', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get codmed => getField<String>('codmed');
  set codmed(String? value) => setField<String>('codmed', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get fatorConv => getField<double>('fatorConv');
  set fatorConv(double? value) => setField<double>('fatorConv', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
