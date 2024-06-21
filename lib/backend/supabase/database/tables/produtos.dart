import '../database.dart';

class ProdutosTable extends SupabaseTable<ProdutosRow> {
  @override
  String get tableName => 'produtos';

  @override
  ProdutosRow createRow(Map<String, dynamic> data) => ProdutosRow(data);
}

class ProdutosRow extends SupabaseDataRow {
  ProdutosRow(super.data);

  @override
  SupabaseTable get table => ProdutosTable();

  int get idProdutos => getField<int>('id_produtos')!;
  set idProdutos(int value) => setField<int>('id_produtos', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get grupoId => getField<int>('grupo_id');
  set grupoId(int? value) => setField<int>('grupo_id', value);

  int? get fornId => getField<int>('forn_id');
  set fornId(int? value) => setField<int>('forn_id', value);

  int? get medidaId => getField<int>('medida_id');
  set medidaId(int? value) => setField<int>('medida_id', value);

  String? get origem => getField<String>('ORIGEM');
  set origem(String? value) => setField<String>('ORIGEM', value);

  String? get tipo => getField<String>('TIPO');
  set tipo(String? value) => setField<String>('TIPO', value);

  String? get nome => getField<String>('NOME');
  set nome(String? value) => setField<String>('NOME', value);

  String? get codigo => getField<String>('CODIGO');
  set codigo(String? value) => setField<String>('CODIGO', value);

  String? get barras => getField<String>('BARRAS');
  set barras(String? value) => setField<String>('BARRAS', value);

  String? get cfop => getField<String>('CFOP');
  set cfop(String? value) => setField<String>('CFOP', value);

  String? get cst => getField<String>('CST');
  set cst(String? value) => setField<String>('CST', value);

  String? get csosn => getField<String>('CSOSN');
  set csosn(String? value) => setField<String>('CSOSN', value);

  String? get ncm => getField<String>('NCM');
  set ncm(String? value) => setField<String>('NCM', value);

  String? get cest => getField<String>('CEST');
  set cest(String? value) => setField<String>('CEST', value);

  double? get peso => getField<double>('PESO');
  set peso(double? value) => setField<double>('PESO', value);

  double? get estoqueminimo => getField<double>('ESTOQUEMINIMO');
  set estoqueminimo(double? value) => setField<double>('ESTOQUEMINIMO', value);

  double? get estoque => getField<double>('ESTOQUE');
  set estoque(double? value) => setField<double>('ESTOQUE', value);

  String? get marca => getField<String>('MARCA');
  set marca(String? value) => setField<String>('MARCA', value);

  String? get referencia => getField<String>('REFERENCIA');
  set referencia(String? value) => setField<String>('REFERENCIA', value);

  String? get localizacao => getField<String>('LOCALIZACAO');
  set localizacao(String? value) => setField<String>('LOCALIZACAO', value);

  String? get aplicacao => getField<String>('APLICACAO');
  set aplicacao(String? value) => setField<String>('APLICACAO', value);

  double? get custo => getField<double>('CUSTO');
  set custo(double? value) => setField<double>('CUSTO', value);

  double? get custofinal => getField<double>('CUSTOFINAL');
  set custofinal(double? value) => setField<double>('CUSTOFINAL', value);

  double? get margemlucro => getField<double>('MARGEMLUCRO');
  set margemlucro(double? value) => setField<double>('MARGEMLUCRO', value);

  double? get venda => getField<double>('VENDA');
  set venda(double? value) => setField<double>('VENDA', value);

  double? get cofins => getField<double>('COFINS');
  set cofins(double? value) => setField<double>('COFINS', value);

  String? get cofinscst => getField<String>('COFINSCST');
  set cofinscst(String? value) => setField<String>('COFINSCST', value);

  double? get pis => getField<double>('PIS');
  set pis(double? value) => setField<double>('PIS', value);

  String? get piscst => getField<String>('PISCST');
  set piscst(String? value) => setField<String>('PISCST', value);

  double? get ipi => getField<double>('IPI');
  set ipi(double? value) => setField<double>('IPI', value);

  String? get ipicst => getField<String>('IPICST');
  set ipicst(String? value) => setField<String>('IPICST', value);

  double? get mva => getField<double>('MVA');
  set mva(double? value) => setField<double>('MVA', value);

  double? get aliquotaestadual => getField<double>('ALIQUOTAESTADUAL');
  set aliquotaestadual(double? value) =>
      setField<double>('ALIQUOTAESTADUAL', value);

  double? get aliquotafederal => getField<double>('ALIQUOTAFEDERAL');
  set aliquotafederal(double? value) =>
      setField<double>('ALIQUOTAFEDERAL', value);

  double? get icmssaida => getField<double>('ICMSSAIDA');
  set icmssaida(double? value) => setField<double>('ICMSSAIDA', value);

  double? get icmssubstituicao => getField<double>('ICMSSUBSTITUICAO');
  set icmssubstituicao(double? value) =>
      setField<double>('ICMSSUBSTITUICAO', value);

  double? get custooperacional => getField<double>('CUSTOOPERACIONAL');
  set custooperacional(double? value) =>
      setField<double>('CUSTOOPERACIONAL', value);

  double? get freteentrada => getField<double>('FRETEENTRADA');
  set freteentrada(double? value) => setField<double>('FRETEENTRADA', value);

  String? get abrasf => getField<String>('ABRASF');
  set abrasf(String? value) => setField<String>('ABRASF', value);

  String? get localfoto => getField<String>('LOCALFOTO');
  set localfoto(String? value) => setField<String>('LOCALFOTO', value);

  DateTime? get datcad => getField<DateTime>('DATCAD');
  set datcad(DateTime? value) => setField<DateTime>('DATCAD', value);

  DateTime? get datulcom => getField<DateTime>('DATULCOM');
  set datulcom(DateTime? value) => setField<DateTime>('DATULCOM', value);

  DateTime? get datulven => getField<DateTime>('DATULVEN');
  set datulven(DateTime? value) => setField<DateTime>('DATULVEN', value);

  String? get codprofor => getField<String>('CODPROFOR');
  set codprofor(String? value) => setField<String>('CODPROFOR', value);

  bool? get infadic => getField<bool>('INFADIC');
  set infadic(bool? value) => setField<bool>('INFADIC', value);

  bool? get ativo => getField<bool>('ATIVO');
  set ativo(bool? value) => setField<bool>('ATIVO', value);

  double? get ipientrada => getField<double>('IPIENTRADA');
  set ipientrada(double? value) => setField<double>('IPIENTRADA', value);

  double? get outrasdespesas => getField<double>('OUTRASDESPESAS');
  set outrasdespesas(double? value) =>
      setField<double>('OUTRASDESPESAS', value);

  String? get cprodanp => getField<String>('CPRODANP');
  set cprodanp(String? value) => setField<String>('CPRODANP', value);

  double? get taxaadm => getField<double>('TAXAADM');
  set taxaadm(double? value) => setField<double>('TAXAADM', value);

  double? get simples => getField<double>('SIMPLES');
  set simples(double? value) => setField<double>('SIMPLES', value);

  double? get comissao => getField<double>('COMISSAO');
  set comissao(double? value) => setField<double>('COMISSAO', value);

  double? get outrosimpostos => getField<double>('OUTROSIMPOSTOS');
  set outrosimpostos(double? value) =>
      setField<double>('OUTROSIMPOSTOS', value);

  double? get fretesaida => getField<double>('FRETESAIDA');
  set fretesaida(double? value) => setField<double>('FRETESAIDA', value);

  bool? get fcp => getField<bool>('FCP');
  set fcp(bool? value) => setField<bool>('FCP', value);

  DateTime? get validade => getField<DateTime>('VALIDADE');
  set validade(DateTime? value) => setField<DateTime>('VALIDADE', value);

  int? get codsubgrupo => getField<int>('CODSUBGRUPO');
  set codsubgrupo(int? value) => setField<int>('CODSUBGRUPO', value);

  double? get icmsentrada => getField<double>('ICMSENTRADA');
  set icmsentrada(double? value) => setField<double>('ICMSENTRADA', value);

  int? get empresaId => getField<int>('empresa_id');
  set empresaId(int? value) => setField<int>('empresa_id', value);

  String? get idUser => getField<String>('id_user');
  set idUser(String? value) => setField<String>('id_user', value);
}
