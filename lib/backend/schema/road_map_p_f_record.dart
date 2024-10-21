import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoadMapPFRecord extends FirestoreRecord {
  RoadMapPFRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Resumen" field.
  String? _resumen;
  String get resumen => _resumen ?? '';
  bool hasResumen() => _resumen != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _resumen = snapshotData['Resumen'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RoadMap_PF')
          : FirebaseFirestore.instance.collectionGroup('RoadMap_PF');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RoadMap_PF').doc(id);

  static Stream<RoadMapPFRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoadMapPFRecord.fromSnapshot(s));

  static Future<RoadMapPFRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoadMapPFRecord.fromSnapshot(s));

  static RoadMapPFRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoadMapPFRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoadMapPFRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoadMapPFRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoadMapPFRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoadMapPFRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoadMapPFRecordData({
  String? titulo,
  String? resumen,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Resumen': resumen,
      'Fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoadMapPFRecordDocumentEquality implements Equality<RoadMapPFRecord> {
  const RoadMapPFRecordDocumentEquality();

  @override
  bool equals(RoadMapPFRecord? e1, RoadMapPFRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.resumen == e2?.resumen &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(RoadMapPFRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.resumen, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is RoadMapPFRecord;
}
