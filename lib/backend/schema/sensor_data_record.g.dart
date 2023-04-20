// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SensorDataRecord> _$sensorDataRecordSerializer =
    new _$SensorDataRecordSerializer();

class _$SensorDataRecordSerializer
    implements StructuredSerializer<SensorDataRecord> {
  @override
  final Iterable<Type> types = const [SensorDataRecord, _$SensorDataRecord];
  @override
  final String wireName = 'SensorDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SensorDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.pulse;
    if (value != null) {
      result
        ..add('pulse')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.spo2;
    if (value != null) {
      result
        ..add('spo2')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
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
  SensorDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SensorDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pulse':
          result.pulse = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'spo2':
          result.spo2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
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

class _$SensorDataRecord extends SensorDataRecord {
  @override
  final int? pulse;
  @override
  final int? spo2;
  @override
  final DateTime? timestamp;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SensorDataRecord(
          [void Function(SensorDataRecordBuilder)? updates]) =>
      (new SensorDataRecordBuilder()..update(updates))._build();

  _$SensorDataRecord._({this.pulse, this.spo2, this.timestamp, this.ffRef})
      : super._();

  @override
  SensorDataRecord rebuild(void Function(SensorDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SensorDataRecordBuilder toBuilder() =>
      new SensorDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SensorDataRecord &&
        pulse == other.pulse &&
        spo2 == other.spo2 &&
        timestamp == other.timestamp &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pulse.hashCode);
    _$hash = $jc(_$hash, spo2.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SensorDataRecord')
          ..add('pulse', pulse)
          ..add('spo2', spo2)
          ..add('timestamp', timestamp)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SensorDataRecordBuilder
    implements Builder<SensorDataRecord, SensorDataRecordBuilder> {
  _$SensorDataRecord? _$v;

  int? _pulse;
  int? get pulse => _$this._pulse;
  set pulse(int? pulse) => _$this._pulse = pulse;

  int? _spo2;
  int? get spo2 => _$this._spo2;
  set spo2(int? spo2) => _$this._spo2 = spo2;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SensorDataRecordBuilder() {
    SensorDataRecord._initializeBuilder(this);
  }

  SensorDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pulse = $v.pulse;
      _spo2 = $v.spo2;
      _timestamp = $v.timestamp;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SensorDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SensorDataRecord;
  }

  @override
  void update(void Function(SensorDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SensorDataRecord build() => _build();

  _$SensorDataRecord _build() {
    final _$result = _$v ??
        new _$SensorDataRecord._(
            pulse: pulse, spo2: spo2, timestamp: timestamp, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
