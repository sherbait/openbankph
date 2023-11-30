// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ObpLocationStruct extends FFFirebaseStruct {
  ObpLocationStruct({
    double? latitude,
    double? longitude,
    LatLng? geolocation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _latitude = latitude,
        _longitude = longitude,
        _geolocation = geolocation,
        super(firestoreUtilData);

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;
  void incrementLatitude(double amount) => _latitude = latitude + amount;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;
  void incrementLongitude(double amount) => _longitude = longitude + amount;
  bool hasLongitude() => _longitude != null;

  // "geolocation" field.
  LatLng? _geolocation;
  LatLng? get geolocation => _geolocation;
  set geolocation(LatLng? val) => _geolocation = val;
  bool hasGeolocation() => _geolocation != null;

  static ObpLocationStruct fromMap(Map<String, dynamic> data) =>
      ObpLocationStruct(
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        geolocation: data['geolocation'] as LatLng?,
      );

  static ObpLocationStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ObpLocationStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'latitude': _latitude,
        'longitude': _longitude,
        'geolocation': _geolocation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'geolocation': serializeParam(
          _geolocation,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static ObpLocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      ObpLocationStruct(
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        geolocation: deserializeParam(
          data['geolocation'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'ObpLocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ObpLocationStruct &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        geolocation == other.geolocation;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([latitude, longitude, geolocation]);
}

ObpLocationStruct createObpLocationStruct({
  double? latitude,
  double? longitude,
  LatLng? geolocation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ObpLocationStruct(
      latitude: latitude,
      longitude: longitude,
      geolocation: geolocation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ObpLocationStruct? updateObpLocationStruct(
  ObpLocationStruct? obpLocation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    obpLocation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addObpLocationStructData(
  Map<String, dynamic> firestoreData,
  ObpLocationStruct? obpLocation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (obpLocation == null) {
    return;
  }
  if (obpLocation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && obpLocation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final obpLocationData =
      getObpLocationFirestoreData(obpLocation, forFieldValue);
  final nestedData =
      obpLocationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = obpLocation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getObpLocationFirestoreData(
  ObpLocationStruct? obpLocation, [
  bool forFieldValue = false,
]) {
  if (obpLocation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(obpLocation.toMap());

  // Add any Firestore field values
  obpLocation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getObpLocationListFirestoreData(
  List<ObpLocationStruct>? obpLocations,
) =>
    obpLocations?.map((e) => getObpLocationFirestoreData(e, true)).toList() ??
    [];
