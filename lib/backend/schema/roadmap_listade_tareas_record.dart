import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoadmapListadeTareasRecord extends FirestoreRecord {
  RoadmapListadeTareasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Dificultad" field.
  String? _dificultad;
  String get dificultad => _dificultad ?? '';
  bool hasDificultad() => _dificultad != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _dificultad = snapshotData['Dificultad'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Roadmap_ListadeTareas')
          : FirebaseFirestore.instance.collectionGroup('Roadmap_ListadeTareas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Roadmap_ListadeTareas').doc(id);

  static Stream<RoadmapListadeTareasRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => RoadmapListadeTareasRecord.fromSnapshot(s));

  static Future<RoadmapListadeTareasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RoadmapListadeTareasRecord.fromSnapshot(s));

  static RoadmapListadeTareasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoadmapListadeTareasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoadmapListadeTareasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoadmapListadeTareasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoadmapListadeTareasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoadmapListadeTareasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoadmapListadeTareasRecordData({
  String? titulo,
  DateTime? fecha,
  String? dificultad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Fecha': fecha,
      'Dificultad': dificultad,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoadmapListadeTareasRecordDocumentEquality
    implements Equality<RoadmapListadeTareasRecord> {
  const RoadmapListadeTareasRecordDocumentEquality();

  @override
  bool equals(RoadmapListadeTareasRecord? e1, RoadmapListadeTareasRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.fecha == e2?.fecha &&
        e1?.dificultad == e2?.dificultad;
  }

  @override
  int hash(RoadmapListadeTareasRecord? e) =>
      const ListEquality().hash([e?.titulo, e?.fecha, e?.dificultad]);

  @override
  bool isValidKey(Object? o) => o is RoadmapListadeTareasRecord;
}
