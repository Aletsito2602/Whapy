import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoadmapRecord extends FirestoreRecord {
  RoadmapRecord._(
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

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "PorcentajeDeDiseo" field.
  double? _porcentajeDeDiseo;
  double get porcentajeDeDiseo => _porcentajeDeDiseo ?? 0.0;
  bool hasPorcentajeDeDiseo() => _porcentajeDeDiseo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _porcentajeDeDiseo = castToType<double>(snapshotData['PorcentajeDeDiseo']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Roadmap')
          : FirebaseFirestore.instance.collectionGroup('Roadmap');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Roadmap').doc(id);

  static Stream<RoadmapRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoadmapRecord.fromSnapshot(s));

  static Future<RoadmapRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoadmapRecord.fromSnapshot(s));

  static RoadmapRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoadmapRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoadmapRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoadmapRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoadmapRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoadmapRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoadmapRecordData({
  String? titulo,
  DateTime? fecha,
  String? descripcion,
  double? porcentajeDeDiseo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Fecha': fecha,
      'Descripcion': descripcion,
      'PorcentajeDeDiseo': porcentajeDeDiseo,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoadmapRecordDocumentEquality implements Equality<RoadmapRecord> {
  const RoadmapRecordDocumentEquality();

  @override
  bool equals(RoadmapRecord? e1, RoadmapRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.fecha == e2?.fecha &&
        e1?.descripcion == e2?.descripcion &&
        e1?.porcentajeDeDiseo == e2?.porcentajeDeDiseo;
  }

  @override
  int hash(RoadmapRecord? e) => const ListEquality()
      .hash([e?.titulo, e?.fecha, e?.descripcion, e?.porcentajeDeDiseo]);

  @override
  bool isValidKey(Object? o) => o is RoadmapRecord;
}
