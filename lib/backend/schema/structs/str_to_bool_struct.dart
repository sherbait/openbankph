// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StrToBoolStruct extends FFFirebaseStruct {
  StrToBoolStruct({
    bool? variable,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _variable = variable,
        super(firestoreUtilData);

  // "variable" field.
  bool? _variable;
  bool get variable => _variable ?? false;
  set variable(bool? val) => _variable = val;
  bool hasVariable() => _variable != null;

  static StrToBoolStruct fromMap(Map<String, dynamic> data) => StrToBoolStruct(
        variable: data['variable'] as bool?,
      );

  static StrToBoolStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? StrToBoolStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'variable': _variable,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'variable': serializeParam(
          _variable,
          ParamType.bool,
        ),
      }.withoutNulls;

  static StrToBoolStruct fromSerializableMap(Map<String, dynamic> data) =>
      StrToBoolStruct(
        variable: deserializeParam(
          data['variable'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'StrToBoolStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StrToBoolStruct && variable == other.variable;
  }

  @override
  int get hashCode => const ListEquality().hash([variable]);
}

StrToBoolStruct createStrToBoolStruct({
  bool? variable,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StrToBoolStruct(
      variable: variable,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StrToBoolStruct? updateStrToBoolStruct(
  StrToBoolStruct? strToBool, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    strToBool
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStrToBoolStructData(
  Map<String, dynamic> firestoreData,
  StrToBoolStruct? strToBool,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (strToBool == null) {
    return;
  }
  if (strToBool.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && strToBool.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final strToBoolData = getStrToBoolFirestoreData(strToBool, forFieldValue);
  final nestedData = strToBoolData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = strToBool.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStrToBoolFirestoreData(
  StrToBoolStruct? strToBool, [
  bool forFieldValue = false,
]) {
  if (strToBool == null) {
    return {};
  }
  final firestoreData = mapToFirestore(strToBool.toMap());

  // Add any Firestore field values
  strToBool.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStrToBoolListFirestoreData(
  List<StrToBoolStruct>? strToBools,
) =>
    strToBools?.map((e) => getStrToBoolFirestoreData(e, true)).toList() ?? [];
