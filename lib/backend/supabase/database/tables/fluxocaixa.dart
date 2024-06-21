import '../database.dart';

class FluxocaixaTable extends SupabaseTable<FluxocaixaRow> {
  @override
  String get tableName => 'fluxocaixa';

  @override
  FluxocaixaRow createRow(Map<String, dynamic> data) => FluxocaixaRow(data);
}

class FluxocaixaRow extends SupabaseDataRow {
  FluxocaixaRow(super.data);

  @override
  SupabaseTable get table => FluxocaixaTable();

  int get idFluxo => getField<int>('id_fluxo')!;
  set idFluxo(int value) => setField<int>('id_fluxo', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get codplano => getField<int>('CODPLANO');
  set codplano(int? value) => setField<int>('CODPLANO', value);

  int? get codforma => getField<int>('CODFORMA');
  set codforma(int? value) => setField<int>('CODFORMA', value);

  String? get numeropedido => getField<String>('NUMEROPEDIDO');
  set numeropedido(String? value) => setField<String>('NUMEROPEDIDO', value);

  String? get numeroentrada => getField<String>('NUMEROENTRADA');
  set numeroentrada(String? value) => setField<String>('NUMEROENTRADA', value);

  String? get numeroos => getField<String>('NUMEROOS');
  set numeroos(String? value) => setField<String>('NUMEROOS', value);

  String? get tipo => getField<String>('TIPO');
  set tipo(String? value) => setField<String>('TIPO', value);

  String? get numdoc => getField<String>('NUMDOC');
  set numdoc(String? value) => setField<String>('NUMDOC', value);

  DateTime? get datlan => getField<DateTime>('DATLAN');
  set datlan(DateTime? value) => setField<DateTime>('DATLAN', value);

  double? get credito => getField<double>('CREDITO');
  set credito(double? value) => setField<double>('CREDITO', value);

  double? get debito => getField<double>('DEBITO');
  set debito(double? value) => setField<double>('DEBITO', value);

  String? get historico => getField<String>('HISTORICO');
  set historico(String? value) => setField<String>('HISTORICO', value);

  String? get movimento => getField<String>('MOVIMENTO');
  set movimento(String? value) => setField<String>('MOVIMENTO', value);

  int? get idrec => getField<int>('IDREC');
  set idrec(int? value) => setField<int>('IDREC', value);

  int? get idpag => getField<int>('IDPAG');
  set idpag(int? value) => setField<int>('IDPAG', value);

  int? get formarecebimento => getField<int>('FORMARECEBIMENTO');
  set formarecebimento(int? value) => setField<int>('FORMARECEBIMENTO', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  int? get fornecedorId => getField<int>('fornecedor_id');
  set fornecedorId(int? value) => setField<int>('fornecedor_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
