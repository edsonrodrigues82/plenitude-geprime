import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _alteraLayout = prefs.getInt('ff_alteraLayout') ?? _alteraLayout;
    });
    _safeInit(() {
      _contatos = prefs
              .getStringList('ff_contatos')
              ?.map((x) {
                try {
                  return ContratosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _contatos;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _alteraLayout = 0;
  int get alteraLayout => _alteraLayout;
  set alteraLayout(int value) {
    _alteraLayout = value;
    prefs.setInt('ff_alteraLayout', value);
  }

  List<ContratosStruct> _contatos = [];
  List<ContratosStruct> get contatos => _contatos;
  set contatos(List<ContratosStruct> value) {
    _contatos = value;
    prefs.setStringList(
        'ff_contatos', value.map((x) => x.serialize()).toList());
  }

  void addToContatos(ContratosStruct value) {
    contatos.add(value);
    prefs.setStringList(
        'ff_contatos', _contatos.map((x) => x.serialize()).toList());
  }

  void removeFromContatos(ContratosStruct value) {
    contatos.remove(value);
    prefs.setStringList(
        'ff_contatos', _contatos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromContatos(int index) {
    contatos.removeAt(index);
    prefs.setStringList(
        'ff_contatos', _contatos.map((x) => x.serialize()).toList());
  }

  void updateContatosAtIndex(
    int index,
    ContratosStruct Function(ContratosStruct) updateFn,
  ) {
    contatos[index] = updateFn(_contatos[index]);
    prefs.setStringList(
        'ff_contatos', _contatos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInContatos(int index, ContratosStruct value) {
    contatos.insert(index, value);
    prefs.setStringList(
        'ff_contatos', _contatos.map((x) => x.serialize()).toList());
  }

  double _propPrice = 0.0;
  double get propPrice => _propPrice;
  set propPrice(double value) {
    _propPrice = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
