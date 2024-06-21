import '../database.dart';

class ClientesTable extends SupabaseTable<ClientesRow> {
  @override
  String get tableName => 'clientes';

  @override
  ClientesRow createRow(Map<String, dynamic> data) => ClientesRow(data);
}

class ClientesRow extends SupabaseDataRow {
  ClientesRow(super.data);

  @override
  SupabaseTable get table => ClientesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get codcli => getField<int>('CODCLI');
  set codcli(int? value) => setField<int>('CODCLI', value);

  String? get tipcli => getField<String>('TIPCLI');
  set tipcli(String? value) => setField<String>('TIPCLI', value);

  String? get nome => getField<String>('NOME');
  set nome(String? value) => setField<String>('NOME', value);

  String? get fantasia => getField<String>('FANTASIA');
  set fantasia(String? value) => setField<String>('FANTASIA', value);

  String? get contato => getField<String>('CONTATO');
  set contato(String? value) => setField<String>('CONTATO', value);

  String? get endereco => getField<String>('ENDERECO');
  set endereco(String? value) => setField<String>('ENDERECO', value);

  String? get numero => getField<String>('NUMERO');
  set numero(String? value) => setField<String>('NUMERO', value);

  String? get bairro => getField<String>('BAIRRO');
  set bairro(String? value) => setField<String>('BAIRRO', value);

  String? get cidade => getField<String>('CIDADE');
  set cidade(String? value) => setField<String>('CIDADE', value);

  String? get estado => getField<String>('ESTADO');
  set estado(String? value) => setField<String>('ESTADO', value);

  String? get cep => getField<String>('CEP');
  set cep(String? value) => setField<String>('CEP', value);

  String? get telefone => getField<String>('TELEFONE');
  set telefone(String? value) => setField<String>('TELEFONE', value);

  String? get celular => getField<String>('CELULAR');
  set celular(String? value) => setField<String>('CELULAR', value);

  String? get cnpjcpf => getField<String>('CNPJCPF');
  set cnpjcpf(String? value) => setField<String>('CNPJCPF', value);

  String? get rgie => getField<String>('RGIE');
  set rgie(String? value) => setField<String>('RGIE', value);

  String? get im => getField<String>('IM');
  set im(String? value) => setField<String>('IM', value);

  String? get email => getField<String>('EMAIL');
  set email(String? value) => setField<String>('EMAIL', value);

  String? get emailnfe => getField<String>('EMAILNFE');
  set emailnfe(String? value) => setField<String>('EMAILNFE', value);

  DateTime? get datacad => getField<DateTime>('DATACAD');
  set datacad(DateTime? value) => setField<DateTime>('DATACAD', value);

  int? get bloqueio => getField<int>('BLOQUEIO');
  set bloqueio(int? value) => setField<int>('BLOQUEIO', value);

  String? get infadic => getField<String>('INFADIC');
  set infadic(String? value) => setField<String>('INFADIC', value);

  String? get estadocivil => getField<String>('ESTADOCIVIL');
  set estadocivil(String? value) => setField<String>('ESTADOCIVIL', value);

  String? get naturalidade => getField<String>('NATURALIDADE');
  set naturalidade(String? value) => setField<String>('NATURALIDADE', value);

  String? get trabalho => getField<String>('TRABALHO');
  set trabalho(String? value) => setField<String>('TRABALHO', value);

  String? get trabalhotelefone => getField<String>('TRABALHOTELEFONE');
  set trabalhotelefone(String? value) =>
      setField<String>('TRABALHOTELEFONE', value);

  String? get conjugue => getField<String>('CONJUGUE');
  set conjugue(String? value) => setField<String>('CONJUGUE', value);

  String? get pai => getField<String>('PAI');
  set pai(String? value) => setField<String>('PAI', value);

  String? get mae => getField<String>('MAE');
  set mae(String? value) => setField<String>('MAE', value);

  String? get apelido => getField<String>('APELIDO');
  set apelido(String? value) => setField<String>('APELIDO', value);

  String? get outrasinf => getField<String>('OUTRASINF');
  set outrasinf(String? value) => setField<String>('OUTRASINF', value);

  String? get comercial => getField<String>('COMERCIAL');
  set comercial(String? value) => setField<String>('COMERCIAL', value);

  double? get limite => getField<double>('LIMITE');
  set limite(double? value) => setField<double>('LIMITE', value);

  String? get localfoto => getField<String>('LOCALFOTO');
  set localfoto(String? value) => setField<String>('LOCALFOTO', value);

  int? get codven => getField<int>('CODVEN');
  set codven(int? value) => setField<int>('CODVEN', value);

  String? get idPais => getField<String>('ID_PAIS');
  set idPais(String? value) => setField<String>('ID_PAIS', value);

  int? get credicms => getField<int>('CREDICMS');
  set credicms(int? value) => setField<int>('CREDICMS', value);

  int? get status => getField<int>('STATUS');
  set status(int? value) => setField<int>('STATUS', value);

  String? get religiao => getField<String>('RELIGIAO');
  set religiao(String? value) => setField<String>('RELIGIAO', value);

  String? get localcobranca => getField<String>('LOCALCOBRANCA');
  set localcobranca(String? value) => setField<String>('LOCALCOBRANCA', value);

  String? get whatsapp => getField<String>('WHATSAPP');
  set whatsapp(String? value) => setField<String>('WHATSAPP', value);

  String? get carencia => getField<String>('CARENCIA');
  set carencia(String? value) => setField<String>('CARENCIA', value);

  String? get plano => getField<String>('PLANO');
  set plano(String? value) => setField<String>('PLANO', value);

  String? get vendedor => getField<String>('VENDEDOR');
  set vendedor(String? value) => setField<String>('VENDEDOR', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  int? get tsitcliente => getField<int>('TSITCLIENTE');
  set tsitcliente(int? value) => setField<int>('TSITCLIENTE', value);

  String? get sexo => getField<String>('SEXO');
  set sexo(String? value) => setField<String>('SEXO', value);

  String? get tipoinscricao => getField<String>('TIPOINSCRICAO');
  set tipoinscricao(String? value) => setField<String>('TIPOINSCRICAO', value);

  String? get datatipoinsc => getField<String>('DATATIPOINSC');
  set datatipoinsc(String? value) => setField<String>('DATATIPOINSC', value);

  int? get percPreenchido => getField<int>('percPreenchido');
  set percPreenchido(int? value) => setField<int>('percPreenchido', value);

  bool? get ativo => getField<bool>('ATIVO');
  set ativo(bool? value) => setField<bool>('ATIVO', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);

  DateTime? get datnas => getField<DateTime>('DATNAS');
  set datnas(DateTime? value) => setField<DateTime>('DATNAS', value);
}
