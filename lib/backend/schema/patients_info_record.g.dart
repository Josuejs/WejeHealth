// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patients_info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PatientsInfoRecord> _$patientsInfoRecordSerializer =
    new _$PatientsInfoRecordSerializer();

class _$PatientsInfoRecordSerializer
    implements StructuredSerializer<PatientsInfoRecord> {
  @override
  final Iterable<Type> types = const [PatientsInfoRecord, _$PatientsInfoRecord];
  @override
  final String wireName = 'PatientsInfoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PatientsInfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombreCompleto;
    if (value != null) {
      result
        ..add('Nombre_Completo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.edad;
    if (value != null) {
      result
        ..add('Edad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fechaDeNacimiento;
    if (value != null) {
      result
        ..add('Fecha_de_Nacimiento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroDeEmergencia;
    if (value != null) {
      result
        ..add('Numero_de_Emergencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cedula;
    if (value != null) {
      result
        ..add('Cedula')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lugarDeNacimiento;
    if (value != null) {
      result
        ..add('Lugar_de_Nacimiento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imgProfile;
    if (value != null) {
      result
        ..add('Img_Profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('CreatedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.citaAgendada;
    if (value != null) {
      result
        ..add('CitaAgendada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PatientsInfoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientsInfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Nombre_Completo':
          result.nombreCompleto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Fecha_de_Nacimiento':
          result.fechaDeNacimiento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Numero_de_Emergencia':
          result.numeroDeEmergencia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Cedula':
          result.cedula = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Lugar_de_Nacimiento':
          result.lugarDeNacimiento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Img_Profile':
          result.imgProfile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CreatedBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'CitaAgendada':
          result.citaAgendada = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PatientsInfoRecord extends PatientsInfoRecord {
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? nombreCompleto;
  @override
  final String? direccion;
  @override
  final int? edad;
  @override
  final String? fechaDeNacimiento;
  @override
  final String? numeroDeEmergencia;
  @override
  final String? cedula;
  @override
  final String? lugarDeNacimiento;
  @override
  final String? imgProfile;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final DateTime? citaAgendada;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PatientsInfoRecord(
          [void Function(PatientsInfoRecordBuilder)? updates]) =>
      (new PatientsInfoRecordBuilder()..update(updates))._build();

  _$PatientsInfoRecord._(
      {this.email,
      this.phoneNumber,
      this.nombreCompleto,
      this.direccion,
      this.edad,
      this.fechaDeNacimiento,
      this.numeroDeEmergencia,
      this.cedula,
      this.lugarDeNacimiento,
      this.imgProfile,
      this.createdBy,
      this.citaAgendada,
      this.ffRef})
      : super._();

  @override
  PatientsInfoRecord rebuild(
          void Function(PatientsInfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientsInfoRecordBuilder toBuilder() =>
      new PatientsInfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientsInfoRecord &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        nombreCompleto == other.nombreCompleto &&
        direccion == other.direccion &&
        edad == other.edad &&
        fechaDeNacimiento == other.fechaDeNacimiento &&
        numeroDeEmergencia == other.numeroDeEmergencia &&
        cedula == other.cedula &&
        lugarDeNacimiento == other.lugarDeNacimiento &&
        imgProfile == other.imgProfile &&
        createdBy == other.createdBy &&
        citaAgendada == other.citaAgendada &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, nombreCompleto.hashCode);
    _$hash = $jc(_$hash, direccion.hashCode);
    _$hash = $jc(_$hash, edad.hashCode);
    _$hash = $jc(_$hash, fechaDeNacimiento.hashCode);
    _$hash = $jc(_$hash, numeroDeEmergencia.hashCode);
    _$hash = $jc(_$hash, cedula.hashCode);
    _$hash = $jc(_$hash, lugarDeNacimiento.hashCode);
    _$hash = $jc(_$hash, imgProfile.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, citaAgendada.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientsInfoRecord')
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('nombreCompleto', nombreCompleto)
          ..add('direccion', direccion)
          ..add('edad', edad)
          ..add('fechaDeNacimiento', fechaDeNacimiento)
          ..add('numeroDeEmergencia', numeroDeEmergencia)
          ..add('cedula', cedula)
          ..add('lugarDeNacimiento', lugarDeNacimiento)
          ..add('imgProfile', imgProfile)
          ..add('createdBy', createdBy)
          ..add('citaAgendada', citaAgendada)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PatientsInfoRecordBuilder
    implements Builder<PatientsInfoRecord, PatientsInfoRecordBuilder> {
  _$PatientsInfoRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _nombreCompleto;
  String? get nombreCompleto => _$this._nombreCompleto;
  set nombreCompleto(String? nombreCompleto) =>
      _$this._nombreCompleto = nombreCompleto;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  int? _edad;
  int? get edad => _$this._edad;
  set edad(int? edad) => _$this._edad = edad;

  String? _fechaDeNacimiento;
  String? get fechaDeNacimiento => _$this._fechaDeNacimiento;
  set fechaDeNacimiento(String? fechaDeNacimiento) =>
      _$this._fechaDeNacimiento = fechaDeNacimiento;

  String? _numeroDeEmergencia;
  String? get numeroDeEmergencia => _$this._numeroDeEmergencia;
  set numeroDeEmergencia(String? numeroDeEmergencia) =>
      _$this._numeroDeEmergencia = numeroDeEmergencia;

  String? _cedula;
  String? get cedula => _$this._cedula;
  set cedula(String? cedula) => _$this._cedula = cedula;

  String? _lugarDeNacimiento;
  String? get lugarDeNacimiento => _$this._lugarDeNacimiento;
  set lugarDeNacimiento(String? lugarDeNacimiento) =>
      _$this._lugarDeNacimiento = lugarDeNacimiento;

  String? _imgProfile;
  String? get imgProfile => _$this._imgProfile;
  set imgProfile(String? imgProfile) => _$this._imgProfile = imgProfile;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  DateTime? _citaAgendada;
  DateTime? get citaAgendada => _$this._citaAgendada;
  set citaAgendada(DateTime? citaAgendada) =>
      _$this._citaAgendada = citaAgendada;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PatientsInfoRecordBuilder() {
    PatientsInfoRecord._initializeBuilder(this);
  }

  PatientsInfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _nombreCompleto = $v.nombreCompleto;
      _direccion = $v.direccion;
      _edad = $v.edad;
      _fechaDeNacimiento = $v.fechaDeNacimiento;
      _numeroDeEmergencia = $v.numeroDeEmergencia;
      _cedula = $v.cedula;
      _lugarDeNacimiento = $v.lugarDeNacimiento;
      _imgProfile = $v.imgProfile;
      _createdBy = $v.createdBy;
      _citaAgendada = $v.citaAgendada;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientsInfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientsInfoRecord;
  }

  @override
  void update(void Function(PatientsInfoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientsInfoRecord build() => _build();

  _$PatientsInfoRecord _build() {
    final _$result = _$v ??
        new _$PatientsInfoRecord._(
            email: email,
            phoneNumber: phoneNumber,
            nombreCompleto: nombreCompleto,
            direccion: direccion,
            edad: edad,
            fechaDeNacimiento: fechaDeNacimiento,
            numeroDeEmergencia: numeroDeEmergencia,
            cedula: cedula,
            lugarDeNacimiento: lugarDeNacimiento,
            imgProfile: imgProfile,
            createdBy: createdBy,
            citaAgendada: citaAgendada,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
