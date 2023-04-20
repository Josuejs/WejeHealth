import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'patients_info_record.g.dart';

abstract class PatientsInfoRecord
    implements Built<PatientsInfoRecord, PatientsInfoRecordBuilder> {
  static Serializer<PatientsInfoRecord> get serializer =>
      _$patientsInfoRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'Nombre_Completo')
  String? get nombreCompleto;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  @BuiltValueField(wireName: 'Edad')
  int? get edad;

  @BuiltValueField(wireName: 'Fecha_de_Nacimiento')
  String? get fechaDeNacimiento;

  @BuiltValueField(wireName: 'Numero_de_Emergencia')
  String? get numeroDeEmergencia;

  @BuiltValueField(wireName: 'Cedula')
  String? get cedula;

  @BuiltValueField(wireName: 'Lugar_de_Nacimiento')
  String? get lugarDeNacimiento;

  @BuiltValueField(wireName: 'Img_Profile')
  String? get imgProfile;

  @BuiltValueField(wireName: 'CreatedBy')
  DocumentReference? get createdBy;

  @BuiltValueField(wireName: 'CitaAgendada')
  DateTime? get citaAgendada;

  @BuiltValueField(wireName: 'EstatusCita')
  DocumentReference? get estatusCita;

  @BuiltValueField(wireName: 'Gender')
  bool? get gender;

  @BuiltValueField(wireName: 'Desease')
  bool? get desease;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PatientsInfoRecordBuilder builder) => builder
    ..email = ''
    ..phoneNumber = ''
    ..nombreCompleto = ''
    ..direccion = ''
    ..edad = 0
    ..fechaDeNacimiento = ''
    ..numeroDeEmergencia = ''
    ..cedula = ''
    ..lugarDeNacimiento = ''
    ..imgProfile = ''
    ..gender = false
    ..desease = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PatientsInfo');

  static Stream<PatientsInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PatientsInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PatientsInfoRecord._();
  factory PatientsInfoRecord(
          [void Function(PatientsInfoRecordBuilder) updates]) =
      _$PatientsInfoRecord;

  static PatientsInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPatientsInfoRecordData({
  String? email,
  String? phoneNumber,
  String? nombreCompleto,
  String? direccion,
  int? edad,
  String? fechaDeNacimiento,
  String? numeroDeEmergencia,
  String? cedula,
  String? lugarDeNacimiento,
  String? imgProfile,
  DocumentReference? createdBy,
  DateTime? citaAgendada,
  DocumentReference? estatusCita,
  bool? gender,
  bool? desease,
}) {
  final firestoreData = serializers.toFirestore(
    PatientsInfoRecord.serializer,
    PatientsInfoRecord(
      (p) => p
        ..email = email
        ..phoneNumber = phoneNumber
        ..nombreCompleto = nombreCompleto
        ..direccion = direccion
        ..edad = edad
        ..fechaDeNacimiento = fechaDeNacimiento
        ..numeroDeEmergencia = numeroDeEmergencia
        ..cedula = cedula
        ..lugarDeNacimiento = lugarDeNacimiento
        ..imgProfile = imgProfile
        ..createdBy = createdBy
        ..citaAgendada = citaAgendada
        ..estatusCita = estatusCita
        ..gender = gender
        ..desease = desease,
    ),
  );

  return firestoreData;
}
