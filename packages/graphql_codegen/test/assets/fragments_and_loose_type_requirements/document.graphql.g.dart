// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentF _$FragmentFFromJson(Map<String, dynamic> json) => FragmentF(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FragmentFToJson(FragmentF instance) => <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
    };

FragmentF$T _$FragmentF$TFromJson(Map<String, dynamic> json) => FragmentF$T(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
      t: json['t'] == null
          ? null
          : FragmentF$T$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FragmentF$TToJson(FragmentF$T instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
      't': instance.t?.toJson(),
    };

FragmentF$T$t _$FragmentF$T$tFromJson(Map<String, dynamic> json) =>
    FragmentF$T$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FragmentF$T$tToJson(FragmentF$T$t instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

QueryQ _$QueryQFromJson(Map<String, dynamic> json) => QueryQ(
      t: json['t'] == null
          ? null
          : QueryQ$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQToJson(QueryQ instance) => <String, dynamic>{
      't': instance.t?.toJson(),
    };

QueryQ$t _$QueryQ$tFromJson(Map<String, dynamic> json) => QueryQ$t(
      $__typename: json['__typename'] as String,
      name: json['name'] as String?,
      t: json['t'] == null
          ? null
          : QueryQ$t$t.fromJson(json['t'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryQ$tToJson(QueryQ$t instance) => <String, dynamic>{
      '__typename': instance.$__typename,
      'name': instance.name,
      't': instance.t?.toJson(),
    };

QueryQ$t$t _$QueryQ$t$tFromJson(Map<String, dynamic> json) => QueryQ$t$t(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QueryQ$t$tToJson(QueryQ$t$t instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
