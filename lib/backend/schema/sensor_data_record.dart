import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sensor_data_record.g.dart';

abstract class SensorDataRecord
    implements Built<SensorDataRecord, SensorDataRecordBuilder> {
  static Serializer<SensorDataRecord> get serializer =>
      _$sensorDataRecordSerializer;

  int? get pulse;

  int? get spo2;

  DateTime? get timestamp;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SensorDataRecordBuilder builder) => builder
    ..pulse = 0
    ..spo2 = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sensor_data');

  static Stream<SensorDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SensorDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SensorDataRecord._();
  factory SensorDataRecord([void Function(SensorDataRecordBuilder) updates]) =
      _$SensorDataRecord;

  static SensorDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSensorDataRecordData({
  int? pulse,
  int? spo2,
  DateTime? timestamp,
}) {
  final firestoreData = serializers.toFirestore(
    SensorDataRecord.serializer,
    SensorDataRecord(
      (s) => s
        ..pulse = pulse
        ..spo2 = spo2
        ..timestamp = timestamp,
    ),
  );

  return firestoreData;
}
