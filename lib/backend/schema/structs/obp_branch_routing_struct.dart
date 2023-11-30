// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ObpBranchRoutingStruct extends FFFirebaseStruct {
  ObpBranchRoutingStruct({
    String? scheme,
    String? address,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _scheme = scheme,
        _address = address,
        super(firestoreUtilData);

  // "scheme" field.
  String? _scheme;
  String get scheme => _scheme ?? '';
  set scheme(String? val) => _scheme = val;
  bool hasScheme() => _scheme != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  static ObpBranchRoutingStruct fromMap(Map<String, dynamic> data) =>
      ObpBranchRoutingStruct(
        scheme: data['scheme'] as String?,
        address: data['address'] as String?,
      );

  static ObpBranchRoutingStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ObpBranchRoutingStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'scheme': _scheme,
        'address': _address,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'scheme': serializeParam(
          _scheme,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
      }.withoutNulls;

  static ObpBranchRoutingStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ObpBranchRoutingStruct(
        scheme: deserializeParam(
          data['scheme'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ObpBranchRoutingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ObpBranchRoutingStruct &&
        scheme == other.scheme &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality().hash([scheme, address]);
}

ObpBranchRoutingStruct createObpBranchRoutingStruct({
  String? scheme,
  String? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ObpBranchRoutingStruct(
      scheme: scheme,
      address: address,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ObpBranchRoutingStruct? updateObpBranchRoutingStruct(
  ObpBranchRoutingStruct? obpBranchRouting, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    obpBranchRouting
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addObpBranchRoutingStructData(
  Map<String, dynamic> firestoreData,
  ObpBranchRoutingStruct? obpBranchRouting,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (obpBranchRouting == null) {
    return;
  }
  if (obpBranchRouting.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && obpBranchRouting.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final obpBranchRoutingData =
      getObpBranchRoutingFirestoreData(obpBranchRouting, forFieldValue);
  final nestedData =
      obpBranchRoutingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = obpBranchRouting.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getObpBranchRoutingFirestoreData(
  ObpBranchRoutingStruct? obpBranchRouting, [
  bool forFieldValue = false,
]) {
  if (obpBranchRouting == null) {
    return {};
  }
  final firestoreData = mapToFirestore(obpBranchRouting.toMap());

  // Add any Firestore field values
  obpBranchRouting.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getObpBranchRoutingListFirestoreData(
  List<ObpBranchRoutingStruct>? obpBranchRoutings,
) =>
    obpBranchRoutings
        ?.map((e) => getObpBranchRoutingFirestoreData(e, true))
        .toList() ??
    [];
