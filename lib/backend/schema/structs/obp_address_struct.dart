// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ObpAddressStruct extends FFFirebaseStruct {
  ObpAddressStruct({
    String? line1,
    String? line2,
    String? line3,
    String? city,
    String? county,
    String? state,
    String? postcode,
    String? countryCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _line1 = line1,
        _line2 = line2,
        _line3 = line3,
        _city = city,
        _county = county,
        _state = state,
        _postcode = postcode,
        _countryCode = countryCode,
        super(firestoreUtilData);

  // "line_1" field.
  String? _line1;
  String get line1 => _line1 ?? '';
  set line1(String? val) => _line1 = val;
  bool hasLine1() => _line1 != null;

  // "line_2" field.
  String? _line2;
  String get line2 => _line2 ?? '';
  set line2(String? val) => _line2 = val;
  bool hasLine2() => _line2 != null;

  // "line_3" field.
  String? _line3;
  String get line3 => _line3 ?? '';
  set line3(String? val) => _line3 = val;
  bool hasLine3() => _line3 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "county" field.
  String? _county;
  String get county => _county ?? '';
  set county(String? val) => _county = val;
  bool hasCounty() => _county != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "postcode" field.
  String? _postcode;
  String get postcode => _postcode ?? '';
  set postcode(String? val) => _postcode = val;
  bool hasPostcode() => _postcode != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;
  bool hasCountryCode() => _countryCode != null;

  static ObpAddressStruct fromMap(Map<String, dynamic> data) =>
      ObpAddressStruct(
        line1: data['line_1'] as String?,
        line2: data['line_2'] as String?,
        line3: data['line_3'] as String?,
        city: data['city'] as String?,
        county: data['county'] as String?,
        state: data['state'] as String?,
        postcode: data['postcode'] as String?,
        countryCode: data['country_code'] as String?,
      );

  static ObpAddressStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ObpAddressStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'line_1': _line1,
        'line_2': _line2,
        'line_3': _line3,
        'city': _city,
        'county': _county,
        'state': _state,
        'postcode': _postcode,
        'country_code': _countryCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'line_1': serializeParam(
          _line1,
          ParamType.String,
        ),
        'line_2': serializeParam(
          _line2,
          ParamType.String,
        ),
        'line_3': serializeParam(
          _line3,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'county': serializeParam(
          _county,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'postcode': serializeParam(
          _postcode,
          ParamType.String,
        ),
        'country_code': serializeParam(
          _countryCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static ObpAddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      ObpAddressStruct(
        line1: deserializeParam(
          data['line_1'],
          ParamType.String,
          false,
        ),
        line2: deserializeParam(
          data['line_2'],
          ParamType.String,
          false,
        ),
        line3: deserializeParam(
          data['line_3'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        county: deserializeParam(
          data['county'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        postcode: deserializeParam(
          data['postcode'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['country_code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ObpAddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ObpAddressStruct &&
        line1 == other.line1 &&
        line2 == other.line2 &&
        line3 == other.line3 &&
        city == other.city &&
        county == other.county &&
        state == other.state &&
        postcode == other.postcode &&
        countryCode == other.countryCode;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([line1, line2, line3, city, county, state, postcode, countryCode]);
}

ObpAddressStruct createObpAddressStruct({
  String? line1,
  String? line2,
  String? line3,
  String? city,
  String? county,
  String? state,
  String? postcode,
  String? countryCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ObpAddressStruct(
      line1: line1,
      line2: line2,
      line3: line3,
      city: city,
      county: county,
      state: state,
      postcode: postcode,
      countryCode: countryCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ObpAddressStruct? updateObpAddressStruct(
  ObpAddressStruct? obpAddress, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    obpAddress
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addObpAddressStructData(
  Map<String, dynamic> firestoreData,
  ObpAddressStruct? obpAddress,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (obpAddress == null) {
    return;
  }
  if (obpAddress.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && obpAddress.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final obpAddressData = getObpAddressFirestoreData(obpAddress, forFieldValue);
  final nestedData = obpAddressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = obpAddress.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getObpAddressFirestoreData(
  ObpAddressStruct? obpAddress, [
  bool forFieldValue = false,
]) {
  if (obpAddress == null) {
    return {};
  }
  final firestoreData = mapToFirestore(obpAddress.toMap());

  // Add any Firestore field values
  obpAddress.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getObpAddressListFirestoreData(
  List<ObpAddressStruct>? obpAddresss,
) =>
    obpAddresss?.map((e) => getObpAddressFirestoreData(e, true)).toList() ?? [];
