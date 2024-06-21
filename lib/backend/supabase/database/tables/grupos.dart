import '../database.dart';

class GruposTable extends SupabaseTable<GruposRow> {
  @override
  String get tableName => 'grupos';

  @override
  GruposRow createRow(Map<String, dynamic> data) => GruposRow(data);
}

class GruposRow extends SupabaseDataRow {
  GruposRow(super.data);

  @override
  SupabaseTable get table => GruposTable();

  int get idGrupos => getField<int>('id_grupos')!;
  set idGrupos(int value) => setField<int>('id_grupos', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('NOME');
  set nome(String? value) => setField<String>('NOME', value);

  String? get descricao => getField<String>('DESCRICAO');
  set descricao(String? value) => setField<String>('DESCRICAO', value);

  bool? get ativo => getField<bool>('ATIVO');
  set ativo(bool? value) => setField<bool>('ATIVO', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get cfop => getField<String>('CFOP');
  set cfop(String? value) => setField<String>('CFOP', value);

  String? get csosn => getField<String>('CSOSN');
  set csosn(String? value) => setField<String>('CSOSN', value);

  String? get cst => getField<String>('CST');
  set cst(String? value) => setField<String>('CST', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
