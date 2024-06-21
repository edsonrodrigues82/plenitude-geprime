// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContratosStruct extends BaseStruct {
  ContratosStruct({
    int? idcontrato,
    String? datacontrato,
    int? idEmpresa,
    double? valorcontrato,
    String? parcelas,
    String? status,
  })  : _idcontrato = idcontrato,
        _datacontrato = datacontrato,
        _idEmpresa = idEmpresa,
        _valorcontrato = valorcontrato,
        _parcelas = parcelas,
        _status = status;

  // "IDCONTRATO" field.
  int? _idcontrato;
  int get idcontrato => _idcontrato ?? 0;
  set idcontrato(int? val) => _idcontrato = val;

  void incrementIdcontrato(int amount) => idcontrato = idcontrato + amount;

  bool hasIdcontrato() => _idcontrato != null;

  // "DATACONTRATO" field.
  String? _datacontrato;
  String get datacontrato => _datacontrato ?? '';
  set datacontrato(String? val) => _datacontrato = val;

  bool hasDatacontrato() => _datacontrato != null;

  // "id_Empresa" field.
  int? _idEmpresa;
  int get idEmpresa => _idEmpresa ?? 0;
  set idEmpresa(int? val) => _idEmpresa = val;

  void incrementIdEmpresa(int amount) => idEmpresa = idEmpresa + amount;

  bool hasIdEmpresa() => _idEmpresa != null;

  // "VALORCONTRATO" field.
  double? _valorcontrato;
  double get valorcontrato => _valorcontrato ?? 0.0;
  set valorcontrato(double? val) => _valorcontrato = val;

  void incrementValorcontrato(double amount) =>
      valorcontrato = valorcontrato + amount;

  bool hasValorcontrato() => _valorcontrato != null;

  // "PARCELAS" field.
  String? _parcelas;
  String get parcelas => _parcelas ?? '';
  set parcelas(String? val) => _parcelas = val;

  bool hasParcelas() => _parcelas != null;

  // "STATUS" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static ContratosStruct fromMap(Map<String, dynamic> data) => ContratosStruct(
        idcontrato: castToType<int>(data['IDCONTRATO']),
        datacontrato: data['DATACONTRATO'] as String?,
        idEmpresa: castToType<int>(data['id_Empresa']),
        valorcontrato: castToType<double>(data['VALORCONTRATO']),
        parcelas: data['PARCELAS'] as String?,
        status: data['STATUS'] as String?,
      );

  static ContratosStruct? maybeFromMap(dynamic data) => data is Map
      ? ContratosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'IDCONTRATO': _idcontrato,
        'DATACONTRATO': _datacontrato,
        'id_Empresa': _idEmpresa,
        'VALORCONTRATO': _valorcontrato,
        'PARCELAS': _parcelas,
        'STATUS': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'IDCONTRATO': serializeParam(
          _idcontrato,
          ParamType.int,
        ),
        'DATACONTRATO': serializeParam(
          _datacontrato,
          ParamType.String,
        ),
        'id_Empresa': serializeParam(
          _idEmpresa,
          ParamType.int,
        ),
        'VALORCONTRATO': serializeParam(
          _valorcontrato,
          ParamType.double,
        ),
        'PARCELAS': serializeParam(
          _parcelas,
          ParamType.String,
        ),
        'STATUS': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContratosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContratosStruct(
        idcontrato: deserializeParam(
          data['IDCONTRATO'],
          ParamType.int,
          false,
        ),
        datacontrato: deserializeParam(
          data['DATACONTRATO'],
          ParamType.String,
          false,
        ),
        idEmpresa: deserializeParam(
          data['id_Empresa'],
          ParamType.int,
          false,
        ),
        valorcontrato: deserializeParam(
          data['VALORCONTRATO'],
          ParamType.double,
          false,
        ),
        parcelas: deserializeParam(
          data['PARCELAS'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['STATUS'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContratosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContratosStruct &&
        idcontrato == other.idcontrato &&
        datacontrato == other.datacontrato &&
        idEmpresa == other.idEmpresa &&
        valorcontrato == other.valorcontrato &&
        parcelas == other.parcelas &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [idcontrato, datacontrato, idEmpresa, valorcontrato, parcelas, status]);
}

ContratosStruct createContratosStruct({
  int? idcontrato,
  String? datacontrato,
  int? idEmpresa,
  double? valorcontrato,
  String? parcelas,
  String? status,
}) =>
    ContratosStruct(
      idcontrato: idcontrato,
      datacontrato: datacontrato,
      idEmpresa: idEmpresa,
      valorcontrato: valorcontrato,
      parcelas: parcelas,
      status: status,
    );
