import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClipsRecord extends FirestoreRecord {
  ClipsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "clips" field.
  String? _clips;
  String get clips => _clips ?? '';
  bool hasClips() => _clips != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _clips = snapshotData['clips'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clips');

  static Stream<ClipsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClipsRecord.fromSnapshot(s));

  static Future<ClipsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClipsRecord.fromSnapshot(s));

  static ClipsRecord fromSnapshot(DocumentSnapshot snapshot) => ClipsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClipsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClipsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClipsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClipsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClipsRecordData({
  String? clips,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clips': clips,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClipsRecordDocumentEquality implements Equality<ClipsRecord> {
  const ClipsRecordDocumentEquality();

  @override
  bool equals(ClipsRecord? e1, ClipsRecord? e2) {
    return e1?.clips == e2?.clips && e1?.fecha == e2?.fecha;
  }

  @override
  int hash(ClipsRecord? e) => const ListEquality().hash([e?.clips, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is ClipsRecord;
}
