import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoresRecord extends FirestoreRecord {
  StoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "food" field.
  List<DocumentReference>? _food;
  List<DocumentReference> get food => _food ?? const [];
  bool hasFood() => _food != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "zip_code" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  bool hasZipCode() => _zipCode != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "location_name" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "store_type" field.
  String? _storeType;
  String get storeType => _storeType ?? '';
  bool hasStoreType() => _storeType != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "rating" field.
  List<double>? _rating;
  List<double> get rating => _rating ?? const [];
  bool hasRating() => _rating != null;

  // "review" field.
  List<String>? _review;
  List<String> get review => _review ?? const [];
  bool hasReview() => _review != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _address = snapshotData['address'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _food = getDataList(snapshotData['food']);
    _user = snapshotData['user'] as DocumentReference?;
    _city = snapshotData['city'] as String?;
    _zipCode = snapshotData['zip_code'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _locationName = snapshotData['location_name'] as String?;
    _storeType = snapshotData['store_type'] as String?;
    _status = snapshotData['status'] as bool?;
    _rating = getDataList(snapshotData['rating']);
    _review = getDataList(snapshotData['review']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stores');

  static Stream<StoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoresRecord.fromSnapshot(s));

  static Future<StoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoresRecord.fromSnapshot(s));

  static StoresRecord fromSnapshot(DocumentSnapshot snapshot) => StoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoresRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  DateTime? modifiedAt,
  String? image,
  String? address,
  LatLng? location,
  DocumentReference? user,
  String? city,
  String? zipCode,
  String? phoneNumber,
  String? locationName,
  String? storeType,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'image': image,
      'address': address,
      'location': location,
      'user': user,
      'city': city,
      'zip_code': zipCode,
      'phone_number': phoneNumber,
      'location_name': locationName,
      'store_type': storeType,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoresRecordDocumentEquality implements Equality<StoresRecord> {
  const StoresRecordDocumentEquality();

  @override
  bool equals(StoresRecord? e1, StoresRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.image == e2?.image &&
        e1?.address == e2?.address &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.food, e2?.food) &&
        e1?.user == e2?.user &&
        e1?.city == e2?.city &&
        e1?.zipCode == e2?.zipCode &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.locationName == e2?.locationName &&
        e1?.storeType == e2?.storeType &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.rating, e2?.rating) &&
        listEquality.equals(e1?.review, e2?.review);
  }

  @override
  int hash(StoresRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.createdAt,
        e?.modifiedAt,
        e?.image,
        e?.address,
        e?.location,
        e?.food,
        e?.user,
        e?.city,
        e?.zipCode,
        e?.phoneNumber,
        e?.locationName,
        e?.storeType,
        e?.status,
        e?.rating,
        e?.review
      ]);

  @override
  bool isValidKey(Object? o) => o is StoresRecord;
}
