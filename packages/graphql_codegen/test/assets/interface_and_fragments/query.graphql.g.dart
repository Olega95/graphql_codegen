// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentFragmentA _$FragmentFragmentAFromJson(Map<String, dynamic> json) =>
    FragmentFragmentA(
      s: json['s'] as String?,
      $_s: json['_s'] as String?,
    );

Map<String, dynamic> _$FragmentFragmentAToJson(FragmentFragmentA instance) =>
    <String, dynamic>{
      's': instance.s,
      '_s': instance.$_s,
    };

FragmentFragmentB _$FragmentFragmentBFromJson(Map<String, dynamic> json) =>
    FragmentFragmentB(
      i: json['i'] as int?,
    );

Map<String, dynamic> _$FragmentFragmentBToJson(FragmentFragmentB instance) =>
    <String, dynamic>{
      'i': instance.i,
    };

QueryFetchImplementations _$QueryFetchImplementationsFromJson(
        Map<String, dynamic> json) =>
    QueryFetchImplementations(
      $interface: json['interface'] == null
          ? null
          : QueryFetchImplementations$interface.fromJson(
              json['interface'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryFetchImplementationsToJson(
        QueryFetchImplementations instance) =>
    <String, dynamic>{
      'interface': instance.$interface?.toJson(),
    };

QueryFetchImplementations$interface
    _$QueryFetchImplementations$interfaceFromJson(Map<String, dynamic> json) =>
        QueryFetchImplementations$interface(
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: QueryFetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$QueryFetchImplementations$interfaceToJson(
        QueryFetchImplementations$interface instance) =>
    <String, dynamic>{
      'typename': instance.typename,
      'b': instance.b,
      'self': instance.self.toJson(),
    };

QueryFetchImplementations$interface$self
    _$QueryFetchImplementations$interface$selfFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$self(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryFetchImplementations$interface$selfToJson(
        QueryFetchImplementations$interface$self instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

QueryFetchImplementations$interface$self$ImplementationA
    _$QueryFetchImplementations$interface$self$ImplementationAFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$self$ImplementationA(
          $__typename: json['__typename'] as String,
          s: json['s'] as String?,
          $_s: json['_s'] as String?,
        );

Map<String,
    dynamic> _$QueryFetchImplementations$interface$self$ImplementationAToJson(
        QueryFetchImplementations$interface$self$ImplementationA instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      's': instance.s,
      '_s': instance.$_s,
    };

QueryFetchImplementations$interface$self$ImplementationB
    _$QueryFetchImplementations$interface$self$ImplementationBFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$self$ImplementationB(
          $__typename: json['__typename'] as String,
          i: json['i'] as int?,
        );

Map<String,
    dynamic> _$QueryFetchImplementations$interface$self$ImplementationBToJson(
        QueryFetchImplementations$interface$self$ImplementationB instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'i': instance.i,
    };

QueryFetchImplementations$interface$ImplementationA
    _$QueryFetchImplementations$interface$ImplementationAFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$ImplementationA(
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: QueryFetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
          s: json['s'] as String?,
          $_s: json['_s'] as String?,
        );

Map<String, dynamic>
    _$QueryFetchImplementations$interface$ImplementationAToJson(
            QueryFetchImplementations$interface$ImplementationA instance) =>
        <String, dynamic>{
          'typename': instance.typename,
          'b': instance.b,
          'self': instance.self.toJson(),
          's': instance.s,
          '_s': instance.$_s,
        };

QueryFetchImplementations$interface$ImplementationB
    _$QueryFetchImplementations$interface$ImplementationBFromJson(
            Map<String, dynamic> json) =>
        QueryFetchImplementations$interface$ImplementationB(
          typename: json['typename'] as String,
          b: json['b'] as bool?,
          self: QueryFetchImplementations$interface$self.fromJson(
              json['self'] as Map<String, dynamic>),
          i: json['i'] as int?,
        );

Map<String, dynamic>
    _$QueryFetchImplementations$interface$ImplementationBToJson(
            QueryFetchImplementations$interface$ImplementationB instance) =>
        <String, dynamic>{
          'typename': instance.typename,
          'b': instance.b,
          'self': instance.self.toJson(),
          'i': instance.i,
        };
