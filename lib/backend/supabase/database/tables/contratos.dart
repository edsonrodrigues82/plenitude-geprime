import '../database.dart';

class ContratosTable extends SupabaseTable<ContratosRow> {
  @override
  String get tableName => 'contratos';

  @override
  ContratosRow createRow(Map<String, dynamic> data) => ContratosRow(data);
}

class ContratosRow extends SupabaseDataRow {
  ContratosRow(super.data);

  @override
  SupabaseTable get table => ContratosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get cliente => getField<int>('CLIENTE');
  set cliente(int? value) => setField<int>('CLIENTE', value);

  DateTime? get datacontrato => getField<DateTime>('DATACONTRATO');
  set datacontrato(DateTime? value) =>
      setField<DateTime>('DATACONTRATO', value);

  String? get tipocontrato => getField<String>('TIPOCONTRATO');
  set tipocontrato(String? value) => setField<String>('TIPOCONTRATO', value);

  double? get valorcontrato => getField<double>('VALORCONTRATO');
  set valorcontrato(double? value) => setField<double>('VALORCONTRATO', value);

  String? get parcelas => getField<String>('PARCELAS');
  set parcelas(String? value) => setField<String>('PARCELAS', value);

  String? get tppgto => getField<String>('TPPGTO');
  set tppgto(String? value) => setField<String>('TPPGTO', value);

  String? get vendedor => getField<String>('VENDEDOR');
  set vendedor(String? value) => setField<String>('VENDEDOR', value);

  String? get tpplano => getField<String>('TPPLANO');
  set tpplano(String? value) => setField<String>('TPPLANO', value);

  DateTime? get dataentrega => getField<DateTime>('DATAENTREGA');
  set dataentrega(DateTime? value) => setField<DateTime>('DATAENTREGA', value);

  String? get status => getField<String>('STATUS');
  set status(String? value) => setField<String>('STATUS', value);

  String? get motivocancel => getField<String>('MOTIVOCANCEL');
  set motivocancel(String? value) => setField<String>('MOTIVOCANCEL', value);

  String? get dataentregacarne => getField<String>('DATAENTREGACARNE');
  set dataentregacarne(String? value) =>
      setField<String>('DATAENTREGACARNE', value);

  String? get pessoaquerecebeucarne =>
      getField<String>('PESSOAQUERECEBEUCARNE');
  set pessoaquerecebeucarne(String? value) =>
      setField<String>('PESSOAQUERECEBEUCARNE', value);

  String? get parentescoreccarne => getField<String>('PARENTESCORECCARNE');
  set parentescoreccarne(String? value) =>
      setField<String>('PARENTESCORECCARNE', value);

  String? get informacoescomplementares =>
      getField<String>('INFORMACOESCOMPLEMENTARES');
  set informacoescomplementares(String? value) =>
      setField<String>('INFORMACOESCOMPLEMENTARES', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
