import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BranchesRecord extends FirestoreRecord {
  BranchesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "phone_number" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "operation_hour" field.
  String? _operationHour;
  String get operationHour => _operationHour ?? '';
  bool hasOperationHour() => _operationHour != null;

  // "operation_day" field.
  String? _operationDay;
  String get operationDay => _operationDay ?? '';
  bool hasOperationDay() => _operationDay != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _owner = snapshotData['owner'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _archived = snapshotData['archived'] as bool?;
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
    _operationHour = snapshotData['operation_hour'] as String?;
    _operationDay = snapshotData['operation_day'] as String?;
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('branches');

  static Stream<BranchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BranchesRecord.fromSnapshot(s));

  static Future<BranchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BranchesRecord.fromSnapshot(s));

  static BranchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BranchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BranchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BranchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BranchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BranchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBranchesRecordData({
  AddressStruct? address,
  DocumentReference? owner,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? archived,
  int? phoneNumber,
  String? operationHour,
  String? operationDay,
  String? email,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': AddressStruct().toMap(),
      'owner': owner,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'archived': archived,
      'phone_number': phoneNumber,
      'operation_hour': operationHour,
      'operation_day': operationDay,
      'email': email,
      'name': name,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class BranchesRecordDocumentEquality implements Equality<BranchesRecord> {
  const BranchesRecordDocumentEquality();

  @override
  bool equals(BranchesRecord? e1, BranchesRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.owner == e2?.owner &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.archived == e2?.archived &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.operationHour == e2?.operationHour &&
        e1?.operationDay == e2?.operationDay &&
        e1?.email == e2?.email &&
        e1?.name == e2?.name;
  }

  @override
  int hash(BranchesRecord? e) => const ListEquality().hash([
        e?.address,
        e?.owner,
        e?.createdAt,
        e?.modifiedAt,
        e?.archived,
        e?.phoneNumber,
        e?.operationHour,
        e?.operationDay,
        e?.email,
        e?.name
      ]);

  @override
  bool isValidKey(Object? o) => o is BranchesRecord;
}
