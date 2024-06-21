import '../database.dart';

class PlanocontasTable extends SupabaseTable<PlanocontasRow> {
  @override
  String get tableName => 'planocontas';

  @override
  PlanocontasRow createRow(Map<String, dynamic> data) => PlanocontasRow(data);
}

class PlanocontasRow extends SupabaseDataRow {
  PlanocontasRow(super.data);

  @override
  SupabaseTable get table => PlanocontasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('NOME');
  set nome(String? value) => setField<String>('NOME', value);

  int? get tIPORouD => getField<int>('TIPO_RouD');
  set tIPORouD(int? value) => setField<int>('TIPO_RouD', value);

  bool? get ativo => getField<bool>('ATIVO');
  set ativo(bool? value) => setField<bool>('ATIVO', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
