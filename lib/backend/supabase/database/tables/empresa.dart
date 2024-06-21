import '../database.dart';

class EmpresaTable extends SupabaseTable<EmpresaRow> {
  @override
  String get tableName => 'empresa';

  @override
  EmpresaRow createRow(Map<String, dynamic> data) => EmpresaRow(data);
}

class EmpresaRow extends SupabaseDataRow {
  EmpresaRow(super.data);

  @override
  SupabaseTable get table => EmpresaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userCriador => getField<String>('user_criador');
  set userCriador(String? value) => setField<String>('user_criador', value);

  String? get razao => getField<String>('razao');
  set razao(String? value) => setField<String>('razao', value);

  String? get fantasia => getField<String>('fantasia');
  set fantasia(String? value) => setField<String>('fantasia', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  bool? get bloquear => getField<bool>('bloquear');
  set bloquear(bool? value) => setField<bool>('bloquear', value);

  String? get logomarca => getField<String>('logomarca');
  set logomarca(String? value) => setField<String>('logomarca', value);

  bool? get reduzidoNoMobile => getField<bool>('reduzidoNoMobile');
  set reduzidoNoMobile(bool? value) =>
      setField<bool>('reduzidoNoMobile', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get ie => getField<String>('ie');
  set ie(String? value) => setField<String>('ie', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get webpage => getField<String>('webpage');
  set webpage(String? value) => setField<String>('webpage', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);
}
