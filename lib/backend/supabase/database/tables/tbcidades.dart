import '../database.dart';

class TbcidadesTable extends SupabaseTable<TbcidadesRow> {
  @override
  String get tableName => 'TBCIDADES';

  @override
  TbcidadesRow createRow(Map<String, dynamic> data) => TbcidadesRow(data);
}

class TbcidadesRow extends SupabaseDataRow {
  TbcidadesRow(super.data);

  @override
  SupabaseTable get table => TbcidadesTable();

  int get idCidades => getField<int>('id_cidades')!;
  set idCidades(int value) => setField<int>('id_cidades', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get codigo => getField<int>('CODIGO');
  set codigo(int? value) => setField<int>('CODIGO', value);

  String? get uf => getField<String>('UF');
  set uf(String? value) => setField<String>('UF', value);

  String? get cidade => getField<String>('CIDADE');
  set cidade(String? value) => setField<String>('CIDADE', value);
}
