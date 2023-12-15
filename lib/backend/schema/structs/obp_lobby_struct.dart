// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ObpLobbyStruct extends FFFirebaseStruct {
  ObpLobbyStruct({
    List<String>? monday,
    List<String>? tuesday,
    List<String>? wednesday,
    List<String>? thursday,
    List<String>? friday,
    List<String>? saturday,
    List<String>? sunday,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _monday = monday,
        _tuesday = tuesday,
        _wednesday = wednesday,
        _thursday = thursday,
        _friday = friday,
        _saturday = saturday,
        _sunday = sunday,
        super(firestoreUtilData);

  // "monday" field.
  List<String>? _monday;
  List<String> get monday => _monday ?? const [];
  set monday(List<String>? val) => _monday = val;
  void updateMonday(Function(List<String>) updateFn) =>
      updateFn(_monday ??= []);
  bool hasMonday() => _monday != null;

  // "tuesday" field.
  List<String>? _tuesday;
  List<String> get tuesday => _tuesday ?? const [];
  set tuesday(List<String>? val) => _tuesday = val;
  void updateTuesday(Function(List<String>) updateFn) =>
      updateFn(_tuesday ??= []);
  bool hasTuesday() => _tuesday != null;

  // "wednesday" field.
  List<String>? _wednesday;
  List<String> get wednesday => _wednesday ?? const [];
  set wednesday(List<String>? val) => _wednesday = val;
  void updateWednesday(Function(List<String>) updateFn) =>
      updateFn(_wednesday ??= []);
  bool hasWednesday() => _wednesday != null;

  // "thursday" field.
  List<String>? _thursday;
  List<String> get thursday => _thursday ?? const [];
  set thursday(List<String>? val) => _thursday = val;
  void updateThursday(Function(List<String>) updateFn) =>
      updateFn(_thursday ??= []);
  bool hasThursday() => _thursday != null;

  // "friday" field.
  List<String>? _friday;
  List<String> get friday => _friday ?? const [];
  set friday(List<String>? val) => _friday = val;
  void updateFriday(Function(List<String>) updateFn) =>
      updateFn(_friday ??= []);
  bool hasFriday() => _friday != null;

  // "saturday" field.
  List<String>? _saturday;
  List<String> get saturday => _saturday ?? const [];
  set saturday(List<String>? val) => _saturday = val;
  void updateSaturday(Function(List<String>) updateFn) =>
      updateFn(_saturday ??= []);
  bool hasSaturday() => _saturday != null;

  // "sunday" field.
  List<String>? _sunday;
  List<String> get sunday => _sunday ?? const [];
  set sunday(List<String>? val) => _sunday = val;
  void updateSunday(Function(List<String>) updateFn) =>
      updateFn(_sunday ??= []);
  bool hasSunday() => _sunday != null;

  static ObpLobbyStruct fromMap(Map<String, dynamic> data) => ObpLobbyStruct(
        monday: getDataList(data['monday']),
        tuesday: getDataList(data['tuesday']),
        wednesday: getDataList(data['wednesday']),
        thursday: getDataList(data['thursday']),
        friday: getDataList(data['friday']),
        saturday: getDataList(data['saturday']),
        sunday: getDataList(data['sunday']),
      );

  static ObpLobbyStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ObpLobbyStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'monday': _monday,
        'tuesday': _tuesday,
        'wednesday': _wednesday,
        'thursday': _thursday,
        'friday': _friday,
        'saturday': _saturday,
        'sunday': _sunday,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'monday': serializeParam(
          _monday,
          ParamType.String,
          true,
        ),
        'tuesday': serializeParam(
          _tuesday,
          ParamType.String,
          true,
        ),
        'wednesday': serializeParam(
          _wednesday,
          ParamType.String,
          true,
        ),
        'thursday': serializeParam(
          _thursday,
          ParamType.String,
          true,
        ),
        'friday': serializeParam(
          _friday,
          ParamType.String,
          true,
        ),
        'saturday': serializeParam(
          _saturday,
          ParamType.String,
          true,
        ),
        'sunday': serializeParam(
          _sunday,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static ObpLobbyStruct fromSerializableMap(Map<String, dynamic> data) =>
      ObpLobbyStruct(
        monday: deserializeParam<String>(
          data['monday'],
          ParamType.String,
          true,
        ),
        tuesday: deserializeParam<String>(
          data['tuesday'],
          ParamType.String,
          true,
        ),
        wednesday: deserializeParam<String>(
          data['wednesday'],
          ParamType.String,
          true,
        ),
        thursday: deserializeParam<String>(
          data['thursday'],
          ParamType.String,
          true,
        ),
        friday: deserializeParam<String>(
          data['friday'],
          ParamType.String,
          true,
        ),
        saturday: deserializeParam<String>(
          data['saturday'],
          ParamType.String,
          true,
        ),
        sunday: deserializeParam<String>(
          data['sunday'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ObpLobbyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ObpLobbyStruct &&
        listEquality.equals(monday, other.monday) &&
        listEquality.equals(tuesday, other.tuesday) &&
        listEquality.equals(wednesday, other.wednesday) &&
        listEquality.equals(thursday, other.thursday) &&
        listEquality.equals(friday, other.friday) &&
        listEquality.equals(saturday, other.saturday) &&
        listEquality.equals(sunday, other.sunday);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([monday, tuesday, wednesday, thursday, friday, saturday, sunday]);
}

ObpLobbyStruct createObpLobbyStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ObpLobbyStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ObpLobbyStruct? updateObpLobbyStruct(
  ObpLobbyStruct? obpLobby, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    obpLobby
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addObpLobbyStructData(
  Map<String, dynamic> firestoreData,
  ObpLobbyStruct? obpLobby,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (obpLobby == null) {
    return;
  }
  if (obpLobby.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && obpLobby.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final obpLobbyData = getObpLobbyFirestoreData(obpLobby, forFieldValue);
  final nestedData = obpLobbyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = obpLobby.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getObpLobbyFirestoreData(
  ObpLobbyStruct? obpLobby, [
  bool forFieldValue = false,
]) {
  if (obpLobby == null) {
    return {};
  }
  final firestoreData = mapToFirestore(obpLobby.toMap());

  // Add any Firestore field values
  obpLobby.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getObpLobbyListFirestoreData(
  List<ObpLobbyStruct>? obpLobbys,
) =>
    obpLobbys?.map((e) => getObpLobbyFirestoreData(e, true)).toList() ?? [];
