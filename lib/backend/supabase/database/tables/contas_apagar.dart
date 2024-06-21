import '../database.dart';

class ContasApagarTable extends SupabaseTable<ContasApagarRow> {
  @override
  String get tableName => 'contasApagar';

  @override
  ContasApagarRow createRow(Map<String, dynamic> data) => ContasApagarRow(data);
}

class ContasApagarRow extends SupabaseDataRow {
  ContasApagarRow(super.data);

  @override
  SupabaseTable get table => ContasApagarTable();

  int get idContasPagar => getField<int>('id_ContasPagar')!;
  set idContasPagar(int value) => setField<int>('id_ContasPagar', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get numpag => getField<int>('NUMPAG');
  set numpag(int? value) => setField<int>('NUMPAG', value);

  int? get codfor => getField<int>('CODFOR');
  set codfor(int? value) => setField<int>('CODFOR', value);

  int? get planoContasId => getField<int>('planoContas_id');
  set planoContasId(int? value) => setField<int>('planoContas_id', value);

  String? get numdoc => getField<String>('NUMDOC');
  set numdoc(String? value) => setField<String>('NUMDOC', value);

  String? get numeronf => getField<String>('NUMERONF');
  set numeronf(String? value) => setField<String>('NUMERONF', value);

  String? get numeroentrada => getField<String>('NUMEROENTRADA');
  set numeroentrada(String? value) => setField<String>('NUMEROENTRADA', value);

  String? get numdup => getField<String>('NUMDUP');
  set numdup(String? value) => setField<String>('NUMDUP', value);

  String? get numpar => getField<String>('NUMPAR');
  set numpar(String? value) => setField<String>('NUMPAR', value);

  int? get numdias => getField<int>('NUMDIAS');
  set numdias(int? value) => setField<int>('NUMDIAS', value);

  DateTime? get datlan => getField<DateTime>('DATLAN');
  set datlan(DateTime? value) => setField<DateTime>('DATLAN', value);

  DateTime? get datven => getField<DateTime>('DATVEN');
  set datven(DateTime? value) => setField<DateTime>('DATVEN', value);

  double? get valorpar => getField<double>('VALORPAR');
  set valorpar(double? value) => setField<double>('VALORPAR', value);

  String? get historico => getField<String>('HISTORICO');
  set historico(String? value) => setField<String>('HISTORICO', value);

  int? get boleto => getField<int>('BOLETO');
  set boleto(int? value) => setField<int>('BOLETO', value);

  int? get quitpar => getField<int>('QUITPAR');
  set quitpar(int? value) => setField<int>('QUITPAR', value);

  int? get codforma => getField<int>('CODFORMA');
  set codforma(int? value) => setField<int>('CODFORMA', value);

  int? get codcont => getField<int>('CODCONT');
  set codcont(int? value) => setField<int>('CODCONT', value);

  String? get numche => getField<String>('NUMCHE');
  set numche(String? value) => setField<String>('NUMCHE', value);

  double? get valorpago => getField<double>('VALORPAGO');
  set valorpago(double? value) => setField<double>('VALORPAGO', value);

  DateTime? get datpag => getField<DateTime>('DATPAG');
  set datpag(DateTime? value) => setField<DateTime>('DATPAG', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
