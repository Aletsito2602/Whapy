import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProyectDocumentRecord extends FirestoreRecord {
  ProyectDocumentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "RepoVideo" field.
  String? _repoVideo;
  String get repoVideo => _repoVideo ?? '';
  bool hasRepoVideo() => _repoVideo != null;

  // "ContratoPDF" field.
  String? _contratoPDF;
  String get contratoPDF => _contratoPDF ?? '';
  bool hasContratoPDF() => _contratoPDF != null;

  // "RepoGitHub" field.
  String? _repoGitHub;
  String get repoGitHub => _repoGitHub ?? '';
  bool hasRepoGitHub() => _repoGitHub != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _repoVideo = snapshotData['RepoVideo'] as String?;
    _contratoPDF = snapshotData['ContratoPDF'] as String?;
    _repoGitHub = snapshotData['RepoGitHub'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Proyect_Document')
          : FirebaseFirestore.instance.collectionGroup('Proyect_Document');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Proyect_Document').doc(id);

  static Stream<ProyectDocumentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProyectDocumentRecord.fromSnapshot(s));

  static Future<ProyectDocumentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProyectDocumentRecord.fromSnapshot(s));

  static ProyectDocumentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProyectDocumentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProyectDocumentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProyectDocumentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProyectDocumentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProyectDocumentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProyectDocumentRecordData({
  String? repoVideo,
  String? contratoPDF,
  String? repoGitHub,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RepoVideo': repoVideo,
      'ContratoPDF': contratoPDF,
      'RepoGitHub': repoGitHub,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProyectDocumentRecordDocumentEquality
    implements Equality<ProyectDocumentRecord> {
  const ProyectDocumentRecordDocumentEquality();

  @override
  bool equals(ProyectDocumentRecord? e1, ProyectDocumentRecord? e2) {
    return e1?.repoVideo == e2?.repoVideo &&
        e1?.contratoPDF == e2?.contratoPDF &&
        e1?.repoGitHub == e2?.repoGitHub;
  }

  @override
  int hash(ProyectDocumentRecord? e) =>
      const ListEquality().hash([e?.repoVideo, e?.contratoPDF, e?.repoGitHub]);

  @override
  bool isValidKey(Object? o) => o is ProyectDocumentRecord;
}
