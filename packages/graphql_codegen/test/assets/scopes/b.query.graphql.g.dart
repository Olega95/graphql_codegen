// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'b.query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFetchPerson _$QueryFetchPersonFromJson(Map<String, dynamic> json) =>
    QueryFetchPerson(
      fetchPerson: json['fetchPerson'] == null
          ? null
          : QueryFetchPerson$fetchPerson.fromJson(
              json['fetchPerson'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryFetchPersonToJson(QueryFetchPerson instance) =>
    <String, dynamic>{
      'fetchPerson': instance.fetchPerson?.toJson(),
      '__typename': instance.$__typename,
    };

QueryFetchPerson$fetchPerson _$QueryFetchPerson$fetchPersonFromJson(
        Map<String, dynamic> json) =>
    QueryFetchPerson$fetchPerson(
      age: json['age'] as int?,
      name: json['name'] as String?,
      status: $enumDecodeNullable(_$EnumStatusEnumMap, json['status'],
          unknownValue: EnumStatus.$unknown),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryFetchPerson$fetchPersonToJson(
        QueryFetchPerson$fetchPerson instance) =>
    <String, dynamic>{
      'age': instance.age,
      'name': instance.name,
      'status': _$EnumStatusEnumMap[instance.status],
      '__typename': instance.$__typename,
    };

const _$EnumStatusEnumMap = {
  EnumStatus.cool: 'COOL',
  EnumStatus.smeans: 'SMEANS',
  EnumStatus.$unknown: r'$unknown',
};
