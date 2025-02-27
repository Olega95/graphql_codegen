// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphQLCodegenConfigScalar _$GraphQLCodegenConfigScalarFromJson(
        Map<String, dynamic> json) =>
    GraphQLCodegenConfigScalar(
      type: json['type'] as String,
      import: json['import'] as String?,
      fromJsonFunctionName: json['fromJsonFunctionName'] as String?,
      toJsonFunctionName: json['toJsonFunctionName'] as String?,
    );

Map<String, dynamic> _$GraphQLCodegenConfigScalarToJson(
        GraphQLCodegenConfigScalar instance) =>
    <String, dynamic>{
      'type': instance.type,
      'import': instance.import,
      'fromJsonFunctionName': instance.fromJsonFunctionName,
      'toJsonFunctionName': instance.toJsonFunctionName,
    };

GraphQLCodegenConfig _$GraphQLCodegenConfigFromJson(
        Map<String, dynamic> json) =>
    GraphQLCodegenConfig(
      clients: (json['clients'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$GraphQLCodegenConfigClientEnumMap, e))
              .toSet() ??
          {},
      scalars: (json['scalars'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k,
                GraphQLCodegenConfigScalar.fromJson(e as Map<String, dynamic>)),
          ) ??
          {},
      addTypename: json['addTypename'] as bool? ?? true,
      assetsPath: json['assetsPath'] as String? ?? 'lib/**.graphql',
      scopes: (json['scopes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          ['**.graphql'],
      addTypenameExcludedPaths:
          (json['addTypenameExcludedPaths'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      generatedFileHeader: json['generatedFileHeader'] as String? ?? '',
      includeIfNullOnInput: json['includeIfNullOnInput'] as bool? ?? true,
    );

Map<String, dynamic> _$GraphQLCodegenConfigToJson(
        GraphQLCodegenConfig instance) =>
    <String, dynamic>{
      'clients': instance.clients
          .map((e) => _$GraphQLCodegenConfigClientEnumMap[e])
          .toList(),
      'scalars': instance.scalars,
      'addTypename': instance.addTypename,
      'assetsPath': instance.assetsPath,
      'scopes': instance.scopes,
      'addTypenameExcludedPaths': instance.addTypenameExcludedPaths,
      'generatedFileHeader': instance.generatedFileHeader,
      'includeIfNullOnInput': instance.includeIfNullOnInput,
    };

const _$GraphQLCodegenConfigClientEnumMap = {
  GraphQLCodegenConfigClient.graphql: 'graphql',
  GraphQLCodegenConfigClient.graphqlFlutter: 'graphql_flutter',
};
