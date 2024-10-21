import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormulariosCorpRecord extends FirestoreRecord {
  FormulariosCorpRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formularios_Corp');

  static Stream<FormulariosCorpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormulariosCorpRecord.fromSnapshot(s));

  static Future<FormulariosCorpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormulariosCorpRecord.fromSnapshot(s));

  static FormulariosCorpRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormulariosCorpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormulariosCorpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormulariosCorpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormulariosCorpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormulariosCorpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormulariosCorpRecordData({
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormulariosCorpRecordDocumentEquality
    implements Equality<FormulariosCorpRecord> {
  const FormulariosCorpRecordDocumentEquality();

  @override
  bool equals(FormulariosCorpRecord? e1, FormulariosCorpRecord? e2) {
    return e1?.nombre == e2?.nombre;
  }

  @override
  int hash(FormulariosCorpRecord? e) => const ListEquality().hash([e?.nombre]);

  @override
  bool isValidKey(Object? o) => o is FormulariosCorpRecord;
}
