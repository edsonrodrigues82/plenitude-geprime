import '/botoes/bt_geral/bt_geral_widget.dart';
import '/botoes/bt_geral_maior/bt_geral_maior_widget.dart';
import '/botoes/bt_geral_sem_texto/bt_geral_sem_texto_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_clientes_widget.dart' show AddClientesWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddClientesModel extends FlutterFlowModel<AddClientesWidget> {
  ///  Local state fields for this component.

  bool? ativoSN = true;

  String? tipoPessoa = 'Física';

  List<double> soma = [
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0
  ];
  void addToSoma(double item) => soma.add(item);
  void removeFromSoma(double item) => soma.remove(item);
  void removeAtIndexFromSoma(int index) => soma.removeAt(index);
  void insertAtIndexInSoma(int index, double item) => soma.insert(index, item);
  void updateSomaAtIndex(int index, Function(double) updateFn) =>
      soma[index] = updateFn(soma[index]);

  bool? varParte1;

  bool? varParte2;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Fantasia widget.
  FocusNode? fantasiaFocusNode;
  TextEditingController? fantasiaTextController;
  String? Function(BuildContext, String?)? fantasiaTextControllerValidator;
  // State field(s) for Contato widget.
  FocusNode? contatoFocusNode;
  TextEditingController? contatoTextController;
  String? Function(BuildContext, String?)? contatoTextControllerValidator;
  // State field(s) for Endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // State field(s) for Bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for UF widget.
  String? ufValue;
  FormFieldController<String>? ufValueController;
  // State field(s) for Cidade widget.
  String? cidadeValue;
  FormFieldController<String>? cidadeValueController;
  // State field(s) for Complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoTextController;
  String? Function(BuildContext, String?)? complementoTextControllerValidator;
  // State field(s) for Cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for WhatsApp widget.
  FocusNode? whatsAppFocusNode;
  TextEditingController? whatsAppTextController;
  final whatsAppMask = MaskTextInputFormatter(mask: '+55(##)9####-####');
  String? Function(BuildContext, String?)? whatsAppTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Nascimento widget.
  FocusNode? nascimentoFocusNode;
  TextEditingController? nascimentoTextController;
  final nascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? nascimentoTextControllerValidator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for RG widget.
  FocusNode? rgFocusNode;
  TextEditingController? rgTextController;
  String? Function(BuildContext, String?)? rgTextControllerValidator;
  // State field(s) for CNPJ widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjTextController;
  final cnpjMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? cnpjTextControllerValidator;
  // State field(s) for IE widget.
  FocusNode? ieFocusNode;
  TextEditingController? ieTextController;
  String? Function(BuildContext, String?)? ieTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for EstadoCivil widget.
  String? estadoCivilValue;
  FormFieldController<String>? estadoCivilValueController;
  // State field(s) for Sexo widget.
  String? sexoValue;
  FormFieldController<String>? sexoValueController;
  // State field(s) for Pai widget.
  FocusNode? paiFocusNode;
  TextEditingController? paiTextController;
  String? Function(BuildContext, String?)? paiTextControllerValidator;
  // State field(s) for Mae widget.
  FocusNode? maeFocusNode;
  TextEditingController? maeTextController;
  String? Function(BuildContext, String?)? maeTextControllerValidator;
  // State field(s) for Conjugue widget.
  FocusNode? conjugueFocusNode;
  TextEditingController? conjugueTextController;
  String? Function(BuildContext, String?)? conjugueTextControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for LocalCobranca widget.
  String? localCobrancaValue;
  FormFieldController<String>? localCobrancaValueController;
  // State field(s) for Religiao widget.
  String? religiaoValue;
  FormFieldController<String>? religiaoValueController;
  // State field(s) for Plano widget.
  String? planoValue;
  FormFieldController<String>? planoValueController;
  // State field(s) for Vendedor widget.
  String? vendedorValue;
  FormFieldController<String>? vendedorValueController;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel1;
  // Model for btGeralMaior component.
  late BtGeralMaiorModel btGeralMaiorModel1;
  // Model for btGeralMaior component.
  late BtGeralMaiorModel btGeralMaiorModel2;
  // Model for btGeralSemTexto component.
  late BtGeralSemTextoModel btGeralSemTextoModel2;
  // Model for btGeral component.
  late BtGeralModel btGeralModel;

  @override
  void initState(BuildContext context) {
    btGeralSemTextoModel1 = createModel(context, () => BtGeralSemTextoModel());
    btGeralMaiorModel1 = createModel(context, () => BtGeralMaiorModel());
    btGeralMaiorModel2 = createModel(context, () => BtGeralMaiorModel());
    btGeralSemTextoModel2 = createModel(context, () => BtGeralSemTextoModel());
    btGeralModel = createModel(context, () => BtGeralModel());
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    fantasiaFocusNode?.dispose();
    fantasiaTextController?.dispose();

    contatoFocusNode?.dispose();
    contatoTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    complementoFocusNode?.dispose();
    complementoTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    whatsAppFocusNode?.dispose();
    whatsAppTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    nascimentoFocusNode?.dispose();
    nascimentoTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    rgFocusNode?.dispose();
    rgTextController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjTextController?.dispose();

    ieFocusNode?.dispose();
    ieTextController?.dispose();

    tabBarController?.dispose();
    paiFocusNode?.dispose();
    paiTextController?.dispose();

    maeFocusNode?.dispose();
    maeTextController?.dispose();

    conjugueFocusNode?.dispose();
    conjugueTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    btGeralSemTextoModel1.dispose();
    btGeralMaiorModel1.dispose();
    btGeralMaiorModel2.dispose();
    btGeralSemTextoModel2.dispose();
    btGeralModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
