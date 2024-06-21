import '../database.dart';

class TBUFsTable extends SupabaseTable<TBUFsRow> {
  @override
  String get tableName => 'TBUFs';

  @override
  TBUFsRow createRow(Map<String, dynamic> data) => TBUFsRow(data);
}

class TBUFsRow extends SupabaseDataRow {
  TBUFsRow(super.data);

  @override
  SupabaseTable get table => TBUFsTable();

  int get idUf => getField<int>('id_uf')!;
  set idUf(int value) => setField<int>('id_uf', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get codigo => getField<String>('CODIGO');
  set codigo(String? value) => setField<String>('CODIGO', value);

  String? get descricao => getField<String>('DESCRICAO');
  set descricao(String? value) => setField<String>('DESCRICAO', value);

  int? get ufcod => getField<int>('UFCOD');
  set ufcod(int? value) => setField<int>('UFCOD', value);
}
