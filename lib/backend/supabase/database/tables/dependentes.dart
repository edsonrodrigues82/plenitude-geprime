import '../database.dart';

class DependentesTable extends SupabaseTable<DependentesRow> {
  @override
  String get tableName => 'dependentes';

  @override
  DependentesRow createRow(Map<String, dynamic> data) => DependentesRow(data);
}

class DependentesRow extends SupabaseDataRow {
  DependentesRow(super.data);

  @override
  SupabaseTable get table => DependentesTable();

  int get idDependentes => getField<int>('id_dependentes')!;
  set idDependentes(int value) => setField<int>('id_dependentes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get parentesco => getField<String>('parentesco');
  set parentesco(String? value) => setField<String>('parentesco', value);

  DateTime? get cadastro => getField<DateTime>('cadastro');
  set cadastro(DateTime? value) => setField<DateTime>('cadastro', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  DateTime? get nascimento => getField<DateTime>('nascimento');
  set nascimento(DateTime? value) => setField<DateTime>('nascimento', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  int? get cliente => getField<int>('cliente');
  set cliente(int? value) => setField<int>('cliente', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  DateTime? get dtcarencia => getField<DateTime>('dtcarencia');
  set dtcarencia(DateTime? value) => setField<DateTime>('dtcarencia', value);

  String? get motcancelamento => getField<String>('motcancelamento');
  set motcancelamento(String? value) =>
      setField<String>('motcancelamento', value);

  DateTime? get falecimento => getField<DateTime>('falecimento');
  set falecimento(DateTime? value) => setField<DateTime>('falecimento', value);
}
