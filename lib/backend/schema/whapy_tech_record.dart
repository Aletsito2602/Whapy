import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WhapyTechRecord extends FirestoreRecord {
  WhapyTechRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "precio" field.
  String? _precio;
  String get precio => _precio ?? '';
  bool hasPrecio() => _precio != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "Fase1" field.
  String? _fase1;
  String get fase1 => _fase1 ?? '';
  bool hasFase1() => _fase1 != null;

  // "Fase2" field.
  String? _fase2;
  String get fase2 => _fase2 ?? '';
  bool hasFase2() => _fase2 != null;

  // "Fase3" field.
  String? _fase3;
  String get fase3 => _fase3 ?? '';
  bool hasFase3() => _fase3 != null;

  // "Fase4" field.
  String? _fase4;
  String get fase4 => _fase4 ?? '';
  bool hasFase4() => _fase4 != null;

  // "avanze_porcentaje" field.
  double? _avanzePorcentaje;
  double get avanzePorcentaje => _avanzePorcentaje ?? 0.0;
  bool hasAvanzePorcentaje() => _avanzePorcentaje != null;

  // "documentacion" field.
  String? _documentacion;
  String get documentacion => _documentacion ?? '';
  bool hasDocumentacion() => _documentacion != null;

  // "TareasPendientes" field.
  String? _tareasPendientes;
  String get tareasPendientes => _tareasPendientes ?? '';
  bool hasTareasPendientes() => _tareasPendientes != null;

  // "TareasEnProgreso" field.
  String? _tareasEnProgreso;
  String get tareasEnProgreso => _tareasEnProgreso ?? '';
  bool hasTareasEnProgreso() => _tareasEnProgreso != null;

  // "TareasCompletadas" field.
  String? _tareasCompletadas;
  String get tareasCompletadas => _tareasCompletadas ?? '';
  bool hasTareasCompletadas() => _tareasCompletadas != null;

  // "UltimaActualizacion" field.
  DateTime? _ultimaActualizacion;
  DateTime? get ultimaActualizacion => _ultimaActualizacion;
  bool hasUltimaActualizacion() => _ultimaActualizacion != null;

  // "FechadeInicio" field.
  DateTime? _fechadeInicio;
  DateTime? get fechadeInicio => _fechadeInicio;
  bool hasFechadeInicio() => _fechadeInicio != null;

  // "DescripcionDelProyecto" field.
  String? _descripcionDelProyecto;
  String get descripcionDelProyecto => _descripcionDelProyecto ?? '';
  bool hasDescripcionDelProyecto() => _descripcionDelProyecto != null;

  // "TipodeSofware" field.
  String? _tipodeSofware;
  String get tipodeSofware => _tipodeSofware ?? '';
  bool hasTipodeSofware() => _tipodeSofware != null;

  // "email_cliente" field.
  String? _emailCliente;
  String get emailCliente => _emailCliente ?? '';
  bool hasEmailCliente() => _emailCliente != null;

  // "porcentajedesarrollovisual" field.
  double? _porcentajedesarrollovisual;
  double get porcentajedesarrollovisual => _porcentajedesarrollovisual ?? 0.0;
  bool hasPorcentajedesarrollovisual() => _porcentajedesarrollovisual != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _precio = snapshotData['precio'] as String?;
    _estado = snapshotData['estado'] as String?;
    _fase1 = snapshotData['Fase1'] as String?;
    _fase2 = snapshotData['Fase2'] as String?;
    _fase3 = snapshotData['Fase3'] as String?;
    _fase4 = snapshotData['Fase4'] as String?;
    _avanzePorcentaje = castToType<double>(snapshotData['avanze_porcentaje']);
    _documentacion = snapshotData['documentacion'] as String?;
    _tareasPendientes = snapshotData['TareasPendientes'] as String?;
    _tareasEnProgreso = snapshotData['TareasEnProgreso'] as String?;
    _tareasCompletadas = snapshotData['TareasCompletadas'] as String?;
    _ultimaActualizacion = snapshotData['UltimaActualizacion'] as DateTime?;
    _fechadeInicio = snapshotData['FechadeInicio'] as DateTime?;
    _descripcionDelProyecto = snapshotData['DescripcionDelProyecto'] as String?;
    _tipodeSofware = snapshotData['TipodeSofware'] as String?;
    _emailCliente = snapshotData['email_cliente'] as String?;
    _porcentajedesarrollovisual =
        castToType<double>(snapshotData['porcentajedesarrollovisual']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('WhapyTech');

  static Stream<WhapyTechRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WhapyTechRecord.fromSnapshot(s));

  static Future<WhapyTechRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WhapyTechRecord.fromSnapshot(s));

  static WhapyTechRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WhapyTechRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WhapyTechRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WhapyTechRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WhapyTechRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WhapyTechRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWhapyTechRecordData({
  String? nombre,
  String? precio,
  String? estado,
  String? fase1,
  String? fase2,
  String? fase3,
  String? fase4,
  double? avanzePorcentaje,
  String? documentacion,
  String? tareasPendientes,
  String? tareasEnProgreso,
  String? tareasCompletadas,
  DateTime? ultimaActualizacion,
  DateTime? fechadeInicio,
  String? descripcionDelProyecto,
  String? tipodeSofware,
  String? emailCliente,
  double? porcentajedesarrollovisual,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'precio': precio,
      'estado': estado,
      'Fase1': fase1,
      'Fase2': fase2,
      'Fase3': fase3,
      'Fase4': fase4,
      'avanze_porcentaje': avanzePorcentaje,
      'documentacion': documentacion,
      'TareasPendientes': tareasPendientes,
      'TareasEnProgreso': tareasEnProgreso,
      'TareasCompletadas': tareasCompletadas,
      'UltimaActualizacion': ultimaActualizacion,
      'FechadeInicio': fechadeInicio,
      'DescripcionDelProyecto': descripcionDelProyecto,
      'TipodeSofware': tipodeSofware,
      'email_cliente': emailCliente,
      'porcentajedesarrollovisual': porcentajedesarrollovisual,
    }.withoutNulls,
  );

  return firestoreData;
}

class WhapyTechRecordDocumentEquality implements Equality<WhapyTechRecord> {
  const WhapyTechRecordDocumentEquality();

  @override
  bool equals(WhapyTechRecord? e1, WhapyTechRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.estado == e2?.estado &&
        e1?.fase1 == e2?.fase1 &&
        e1?.fase2 == e2?.fase2 &&
        e1?.fase3 == e2?.fase3 &&
        e1?.fase4 == e2?.fase4 &&
        e1?.avanzePorcentaje == e2?.avanzePorcentaje &&
        e1?.documentacion == e2?.documentacion &&
        e1?.tareasPendientes == e2?.tareasPendientes &&
        e1?.tareasEnProgreso == e2?.tareasEnProgreso &&
        e1?.tareasCompletadas == e2?.tareasCompletadas &&
        e1?.ultimaActualizacion == e2?.ultimaActualizacion &&
        e1?.fechadeInicio == e2?.fechadeInicio &&
        e1?.descripcionDelProyecto == e2?.descripcionDelProyecto &&
        e1?.tipodeSofware == e2?.tipodeSofware &&
        e1?.emailCliente == e2?.emailCliente &&
        e1?.porcentajedesarrollovisual == e2?.porcentajedesarrollovisual;
  }

  @override
  int hash(WhapyTechRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.precio,
        e?.estado,
        e?.fase1,
        e?.fase2,
        e?.fase3,
        e?.fase4,
        e?.avanzePorcentaje,
        e?.documentacion,
        e?.tareasPendientes,
        e?.tareasEnProgreso,
        e?.tareasCompletadas,
        e?.ultimaActualizacion,
        e?.fechadeInicio,
        e?.descripcionDelProyecto,
        e?.tipodeSofware,
        e?.emailCliente,
        e?.porcentajedesarrollovisual
      ]);

  @override
  bool isValidKey(Object? o) => o is WhapyTechRecord;
}
