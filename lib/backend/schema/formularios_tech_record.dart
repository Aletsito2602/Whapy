import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormulariosTechRecord extends FirestoreRecord {
  FormulariosTechRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "sector" field.
  String? _sector;
  String get sector => _sector ?? '';
  bool hasSector() => _sector != null;

  // "tamano" field.
  String? _tamano;
  String get tamano => _tamano ?? '';
  bool hasTamano() => _tamano != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "usuariofinal" field.
  String? _usuariofinal;
  String get usuariofinal => _usuariofinal ?? '';
  bool hasUsuariofinal() => _usuariofinal != null;

  // "funcionalidades" field.
  String? _funcionalidades;
  String get funcionalidades => _funcionalidades ?? '';
  bool hasFuncionalidades() => _funcionalidades != null;

  // "tecnologia" field.
  String? _tecnologia;
  String get tecnologia => _tecnologia ?? '';
  bool hasTecnologia() => _tecnologia != null;

  // "plataforma" field.
  String? _plataforma;
  String get plataforma => _plataforma ?? '';
  bool hasPlataforma() => _plataforma != null;

  // "reunion" field.
  DateTime? _reunion;
  DateTime? get reunion => _reunion;
  bool hasReunion() => _reunion != null;

  // "presupuestoo" field.
  String? _presupuestoo;
  String get presupuestoo => _presupuestoo ?? '';
  bool hasPresupuestoo() => _presupuestoo != null;

  // "plazoss" field.
  String? _plazoss;
  String get plazoss => _plazoss ?? '';
  bool hasPlazoss() => _plazoss != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _sector = snapshotData['sector'] as String?;
    _tamano = snapshotData['tamano'] as String?;
    _objetivo = snapshotData['objetivo'] as String?;
    _usuariofinal = snapshotData['usuariofinal'] as String?;
    _funcionalidades = snapshotData['funcionalidades'] as String?;
    _tecnologia = snapshotData['tecnologia'] as String?;
    _plataforma = snapshotData['plataforma'] as String?;
    _reunion = snapshotData['reunion'] as DateTime?;
    _presupuestoo = snapshotData['presupuestoo'] as String?;
    _plazoss = snapshotData['plazoss'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formularios_tech');

  static Stream<FormulariosTechRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormulariosTechRecord.fromSnapshot(s));

  static Future<FormulariosTechRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormulariosTechRecord.fromSnapshot(s));

  static FormulariosTechRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormulariosTechRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormulariosTechRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormulariosTechRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormulariosTechRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormulariosTechRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormulariosTechRecordData({
  String? nombre,
  String? sector,
  String? tamano,
  String? objetivo,
  String? usuariofinal,
  String? funcionalidades,
  String? tecnologia,
  String? plataforma,
  DateTime? reunion,
  String? presupuestoo,
  String? plazoss,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'sector': sector,
      'tamano': tamano,
      'objetivo': objetivo,
      'usuariofinal': usuariofinal,
      'funcionalidades': funcionalidades,
      'tecnologia': tecnologia,
      'plataforma': plataforma,
      'reunion': reunion,
      'presupuestoo': presupuestoo,
      'plazoss': plazoss,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormulariosTechRecordDocumentEquality
    implements Equality<FormulariosTechRecord> {
  const FormulariosTechRecordDocumentEquality();

  @override
  bool equals(FormulariosTechRecord? e1, FormulariosTechRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.sector == e2?.sector &&
        e1?.tamano == e2?.tamano &&
        e1?.objetivo == e2?.objetivo &&
        e1?.usuariofinal == e2?.usuariofinal &&
        e1?.funcionalidades == e2?.funcionalidades &&
        e1?.tecnologia == e2?.tecnologia &&
        e1?.plataforma == e2?.plataforma &&
        e1?.reunion == e2?.reunion &&
        e1?.presupuestoo == e2?.presupuestoo &&
        e1?.plazoss == e2?.plazoss;
  }

  @override
  int hash(FormulariosTechRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.sector,
        e?.tamano,
        e?.objetivo,
        e?.usuariofinal,
        e?.funcionalidades,
        e?.tecnologia,
        e?.plataforma,
        e?.reunion,
        e?.presupuestoo,
        e?.plazoss
      ]);

  @override
  bool isValidKey(Object? o) => o is FormulariosTechRecord;
}
