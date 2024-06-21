// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LayoutStruct extends BaseStruct {
  LayoutStruct({
    int? layout,
  }) : _layout = layout;

  // "layout" field.
  int? _layout;
  int get layout => _layout ?? 1;
  set layout(int? val) => _layout = val;

  void incrementLayout(int amount) => layout = layout + amount;

  bool hasLayout() => _layout != null;

  static LayoutStruct fromMap(Map<String, dynamic> data) => LayoutStruct(
        layout: castToType<int>(data['layout']),
      );

  static LayoutStruct? maybeFromMap(dynamic data) =>
      data is Map ? LayoutStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'layout': _layout,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'layout': serializeParam(
          _layout,
          ParamType.int,
        ),
      }.withoutNulls;

  static LayoutStruct fromSerializableMap(Map<String, dynamic> data) =>
      LayoutStruct(
        layout: deserializeParam(
          data['layout'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'LayoutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LayoutStruct && layout == other.layout;
  }

  @override
  int get hashCode => const ListEquality().hash([layout]);
}

LayoutStruct createLayoutStruct({
  int? layout,
}) =>
    LayoutStruct(
      layout: layout,
    );
