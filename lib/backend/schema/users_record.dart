import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_map" field.
  LatLng? _displayMap;
  LatLng? get displayMap => _displayMap;
  bool hasDisplayMap() => _displayMap != null;

  // "display_map_name" field.
  String? _displayMapName;
  String get displayMapName => _displayMapName ?? '';
  bool hasDisplayMapName() => _displayMapName != null;

  // "stores" field.
  DocumentReference? _stores;
  DocumentReference? get stores => _stores;
  bool hasStores() => _stores != null;

  // "stores_status" field.
  bool? _storesStatus;
  bool get storesStatus => _storesStatus ?? false;
  bool hasStoresStatus() => _storesStatus != null;

  // "favorite_store" field.
  List<DocumentReference>? _favoriteStore;
  List<DocumentReference> get favoriteStore => _favoriteStore ?? const [];
  bool hasFavoriteStore() => _favoriteStore != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayMap = snapshotData['display_map'] as LatLng?;
    _displayMapName = snapshotData['display_map_name'] as String?;
    _stores = snapshotData['stores'] as DocumentReference?;
    _storesStatus = snapshotData['stores_status'] as bool?;
    _favoriteStore = getDataList(snapshotData['favorite_store']);
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
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  LatLng? displayMap,
  String? displayMapName,
  DocumentReference? stores,
  bool? storesStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'display_map': displayMap,
      'display_map_name': displayMapName,
      'stores': stores,
      'stores_status': storesStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayMap == e2?.displayMap &&
        e1?.displayMapName == e2?.displayMapName &&
        e1?.stores == e2?.stores &&
        e1?.storesStatus == e2?.storesStatus &&
        listEquality.equals(e1?.favoriteStore, e2?.favoriteStore);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.displayMap,
        e?.displayMapName,
        e?.stores,
        e?.storesStatus,
        e?.favoriteStore
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
