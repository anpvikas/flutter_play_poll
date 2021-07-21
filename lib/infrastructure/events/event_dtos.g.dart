// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventDto _$_$_EventDtoFromJson(Map<String, dynamic> json) {
  return _$_EventDto(
    eventId: json['eventId'] as String,
    creatorId: json['creatorId'] as String,
    name: json['name'] as String,
    location: json['location'] as String,
  );
}

Map<String, dynamic> _$_$_EventDtoToJson(_$_EventDto instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'creatorId': instance.creatorId,
      'name': instance.name,
      'location': instance.location,
    };
