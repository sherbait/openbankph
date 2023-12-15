import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "userType" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "userTitle" field.
  String? _userTitle;
  String get userTitle => _userTitle ?? '';
  bool hasUserTitle() => _userTitle != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _uid = snapshotData['uid'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _location = snapshotData['location'] as LatLng?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _userType = snapshotData['userType'] as String?;
    _userTitle = snapshotData['userTitle'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? password,
  String? uid,
  int? age,
  LatLng? location,
  String? firstName,
  String? lastName,
  String? userType,
  String? userTitle,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'password': password,
      'uid': uid,
      'age': age,
      'location': location,
      'firstName': firstName,
      'lastName': lastName,
      'userType': userType,
      'userTitle': userTitle,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.uid == e2?.uid &&
        e1?.age == e2?.age &&
        e1?.location == e2?.location &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.userType == e2?.userType &&
        e1?.userTitle == e2?.userTitle &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.password,
        e?.uid,
        e?.age,
        e?.location,
        e?.firstName,
        e?.lastName,
        e?.userType,
        e?.userTitle,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
