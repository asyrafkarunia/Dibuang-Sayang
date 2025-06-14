import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GooglemapsRecord extends FirestoreRecord {
  GooglemapsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "Place" field.
  String? _place;
  String get place => _place ?? '';
  bool hasPlace() => _place != null;

  // "Location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _place = snapshotData['Place'] as String?;
    _location = snapshotData['Location'] as LatLng?;
    _address = snapshotData['Address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('googlemaps');

  static Stream<GooglemapsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GooglemapsRecord.fromSnapshot(s));

  static Future<GooglemapsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GooglemapsRecord.fromSnapshot(s));

  static GooglemapsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GooglemapsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GooglemapsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GooglemapsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GooglemapsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GooglemapsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGooglemapsRecordData({
  String? id,
  String? place,
  LatLng? location,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'Place': place,
      'Location': location,
      'Address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class GooglemapsRecordDocumentEquality implements Equality<GooglemapsRecord> {
  const GooglemapsRecordDocumentEquality();

  @override
  bool equals(GooglemapsRecord? e1, GooglemapsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.place == e2?.place &&
        e1?.location == e2?.location &&
        e1?.address == e2?.address;
  }

  @override
  int hash(GooglemapsRecord? e) =>
      const ListEquality().hash([e?.id, e?.place, e?.location, e?.address]);

  @override
  bool isValidKey(Object? o) => o is GooglemapsRecord;
}
