import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NumberExampleRecord extends FirestoreRecord {
  NumberExampleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  void _initializeFields() {
    _count = castToType<int>(snapshotData['count']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('numberExample');

  static Stream<NumberExampleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NumberExampleRecord.fromSnapshot(s));

  static Future<NumberExampleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NumberExampleRecord.fromSnapshot(s));

  static NumberExampleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NumberExampleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NumberExampleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NumberExampleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NumberExampleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NumberExampleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNumberExampleRecordData({
  int? count,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'count': count,
    }.withoutNulls,
  );

  return firestoreData;
}

class NumberExampleRecordDocumentEquality
    implements Equality<NumberExampleRecord> {
  const NumberExampleRecordDocumentEquality();

  @override
  bool equals(NumberExampleRecord? e1, NumberExampleRecord? e2) {
    return e1?.count == e2?.count;
  }

  @override
  int hash(NumberExampleRecord? e) => const ListEquality().hash([e?.count]);

  @override
  bool isValidKey(Object? o) => o is NumberExampleRecord;
}
