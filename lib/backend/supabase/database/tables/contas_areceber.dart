import '../database.dart';

class ContasAreceberTable extends SupabaseTable<ContasAreceberRow> {
  @override
  String get tableName => 'contasAreceber';

  @override
  ContasAreceberRow createRow(Map<String, dynamic> data) =>
      ContasAreceberRow(data);
}

class ContasAreceberRow extends SupabaseDataRow {
  ContasAreceberRow(super.data);

  @override
  SupabaseTable get table => ContasAreceberTable();

  int get idContasRec => getField<int>('id_ContasRec')!;
  set idContasRec(int value) => setField<int>('id_ContasRec', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get numrec => getField<int>('NUMREC');
  set numrec(int? value) => setField<int>('NUMREC', value);

  int? get codplancontas => getField<int>('CODPLANCONTAS');
  set codplancontas(int? value) => setField<int>('CODPLANCONTAS', value);

  String? get planofun => getField<String>('PLANOFUN');
  set planofun(String? value) => setField<String>('PLANOFUN', value);

  String? get numdoc => getField<String>('NUMDOC');
  set numdoc(String? value) => setField<String>('NUMDOC', value);

  String? get numeronf => getField<String>('NUMERONF');
  set numeronf(String? value) => setField<String>('NUMERONF', value);

  String? get numeropedido => getField<String>('NUMEROPEDIDO');
  set numeropedido(String? value) => setField<String>('NUMEROPEDIDO', value);

  String? get numeroos => getField<String>('NUMEROOS');
  set numeroos(String? value) => setField<String>('NUMEROOS', value);

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

  int? get filtro => getField<int>('FILTRO');
  set filtro(int? value) => setField<int>('FILTRO', value);

  bool? get quitpar => getField<bool>('QUITPAR');
  set quitpar(bool? value) => setField<bool>('QUITPAR', value);

  int? get boleto => getField<int>('BOLETO');
  set boleto(int? value) => setField<int>('BOLETO', value);

  int? get codforma => getField<int>('CODFORMA');
  set codforma(int? value) => setField<int>('CODFORMA', value);

  String? get numche => getField<String>('NUMCHE');
  set numche(String? value) => setField<String>('NUMCHE', value);

  double? get valorpago => getField<double>('VALORPAGO');
  set valorpago(double? value) => setField<double>('VALORPAGO', value);

  DateTime? get datpag => getField<DateTime>('DATPAG');
  set datpag(DateTime? value) => setField<DateTime>('DATPAG', value);

  int? get vendedores => getField<int>('VENDEDORES');
  set vendedores(int? value) => setField<int>('VENDEDORES', value);

  DateTime? get datarepass => getField<DateTime>('DATAREPASS');
  set datarepass(DateTime? value) => setField<DateTime>('DATAREPASS', value);

  String? get formarecebimento => getField<String>('FORMARECEBIMENTO');
  set formarecebimento(String? value) =>
      setField<String>('FORMARECEBIMENTO', value);

  String? get obs => getField<String>('OBS');
  set obs(String? value) => setField<String>('OBS', value);

  String? get conta => getField<String>('CONTA');
  set conta(String? value) => setField<String>('CONTA', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  int? get contratoId => getField<int>('contrato_id');
  set contratoId(int? value) => setField<int>('contrato_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
