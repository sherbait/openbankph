import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AccountListRecord extends FirestoreRecord {
  AccountListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "accountUser" field.
  DocumentReference? _accountUser;
  DocumentReference? get accountUser => _accountUser;
  bool hasAccountUser() => _accountUser != null;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  bool hasCustomerId() => _customerId != null;

  // "customerNumber" field.
  String? _customerNumber;
  String get customerNumber => _customerNumber ?? '';
  bool hasCustomerNumber() => _customerNumber != null;

  // "accountAsset" field.
  List<String>? _accountAsset;
  List<String> get accountAsset => _accountAsset ?? const [];
  bool hasAccountAsset() => _accountAsset != null;

  // "accountLiability" field.
  List<String>? _accountLiability;
  List<String> get accountLiability => _accountLiability ?? const [];
  bool hasAccountLiability() => _accountLiability != null;

  // "balanceAsset" field.
  double? _balanceAsset;
  double get balanceAsset => _balanceAsset ?? 0.0;
  bool hasBalanceAsset() => _balanceAsset != null;

  // "balanceLiability" field.
  double? _balanceLiability;
  double get balanceLiability => _balanceLiability ?? 0.0;
  bool hasBalanceLiability() => _balanceLiability != null;

  // "newAssetBonus" field.
  double? _newAssetBonus;
  double get newAssetBonus => _newAssetBonus ?? 0.0;
  bool hasNewAssetBonus() => _newAssetBonus != null;

  void _initializeFields() {
    _accountUser = snapshotData['accountUser'] as DocumentReference?;
    _customerId = snapshotData['customerId'] as String?;
    _customerNumber = snapshotData['customerNumber'] as String?;
    _accountAsset = getDataList(snapshotData['accountAsset']);
    _accountLiability = getDataList(snapshotData['accountLiability']);
    _balanceAsset = castToType<double>(snapshotData['balanceAsset']);
    _balanceLiability = castToType<double>(snapshotData['balanceLiability']);
    _newAssetBonus = castToType<double>(snapshotData['newAssetBonus']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('accountList');

  static Stream<AccountListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AccountListRecord.fromSnapshot(s));

  static Future<AccountListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AccountListRecord.fromSnapshot(s));

  static AccountListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AccountListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AccountListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AccountListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AccountListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AccountListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAccountListRecordData({
  DocumentReference? accountUser,
  String? customerId,
  String? customerNumber,
  double? balanceAsset,
  double? balanceLiability,
  double? newAssetBonus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'accountUser': accountUser,
      'customerId': customerId,
      'customerNumber': customerNumber,
      'balanceAsset': balanceAsset,
      'balanceLiability': balanceLiability,
      'newAssetBonus': newAssetBonus,
    }.withoutNulls,
  );

  return firestoreData;
}

class AccountListRecordDocumentEquality implements Equality<AccountListRecord> {
  const AccountListRecordDocumentEquality();

  @override
  bool equals(AccountListRecord? e1, AccountListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.accountUser == e2?.accountUser &&
        e1?.customerId == e2?.customerId &&
        e1?.customerNumber == e2?.customerNumber &&
        listEquality.equals(e1?.accountAsset, e2?.accountAsset) &&
        listEquality.equals(e1?.accountLiability, e2?.accountLiability) &&
        e1?.balanceAsset == e2?.balanceAsset &&
        e1?.balanceLiability == e2?.balanceLiability &&
        e1?.newAssetBonus == e2?.newAssetBonus;
  }

  @override
  int hash(AccountListRecord? e) => const ListEquality().hash([
        e?.accountUser,
        e?.customerId,
        e?.customerNumber,
        e?.accountAsset,
        e?.accountLiability,
        e?.balanceAsset,
        e?.balanceLiability,
        e?.newAssetBonus
      ]);

  @override
  bool isValidKey(Object? o) => o is AccountListRecord;
}
