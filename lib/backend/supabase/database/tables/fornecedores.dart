import '../database.dart';

class FornecedoresTable extends SupabaseTable<FornecedoresRow> {
  @override
  String get tableName => 'fornecedores';

  @override
  FornecedoresRow createRow(Map<String, dynamic> data) => FornecedoresRow(data);
}

class FornecedoresRow extends SupabaseDataRow {
  FornecedoresRow(super.data);

  @override
  SupabaseTable get table => FornecedoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get tipfor => getField<int>('TIPFOR');
  set tipfor(int? value) => setField<int>('TIPFOR', value);

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

  String? get cnpj => getField<String>('CNPJ');
  set cnpj(String? value) => setField<String>('CNPJ', value);

  String? get ie => getField<String>('IE');
  set ie(String? value) => setField<String>('IE', value);

  String? get cpf => getField<String>('CPF');
  set cpf(String? value) => setField<String>('CPF', value);

  String? get rg => getField<String>('RG');
  set rg(String? value) => setField<String>('RG', value);

  String? get email => getField<String>('EMAIL');
  set email(String? value) => setField<String>('EMAIL', value);

  DateTime? get datulcom => getField<DateTime>('DATULCOM');
  set datulcom(DateTime? value) => setField<DateTime>('DATULCOM', value);

  DateTime? get datcad => getField<DateTime>('DATCAD');
  set datcad(DateTime? value) => setField<DateTime>('DATCAD', value);

  bool? get ativo => getField<bool>('ATIVO');
  set ativo(bool? value) => setField<bool>('ATIVO', value);

  String? get idPais => getField<String>('ID_PAIS');
  set idPais(String? value) => setField<String>('ID_PAIS', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
