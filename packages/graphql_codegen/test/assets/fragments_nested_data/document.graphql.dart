import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentF {
  FragmentF({this.other});

  @override
  factory FragmentF.fromJson(Map<String, dynamic> json) =>
      _$FragmentFFromJson(json);

  final FragmentF$other? other;

  Map<String, dynamic> toJson() => _$FragmentFToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF) || runtimeType != other.runtimeType) return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF on FragmentF {
  FragmentF copyWith({FragmentF$other? Function()? other}) =>
      FragmentF(other: other == null ? this.other : other());
}

const FRAGMENT_DEFINITION_FRAGMENT_F = const FragmentDefinitionNode(
    name: NameNode(value: 'F'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
          ]))
    ]));
const FRAGMENT_F = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F,
  FRAGMENT_DEFINITION_FRAGMENT_F2,
  FRAGMENT_DEFINITION_FRAGMENT_F3,
  FRAGMENT_DEFINITION_FRAGMENT_F4,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF$other implements FragmentF2 {
  FragmentF$other({this.other});

  @override
  factory FragmentF$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$otherFromJson(json);

  final FragmentF$other$other? other;

  Map<String, dynamic> toJson() => _$FragmentF$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$other on FragmentF$other {
  FragmentF$other copyWith({FragmentF$other$other? Function()? other}) =>
      FragmentF$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class FragmentF$other$other implements FragmentF2$other, FragmentF3 {
  FragmentF$other$other({this.other});

  @override
  factory FragmentF$other$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$other$otherFromJson(json);

  final FragmentF$other$other$other? other;

  Map<String, dynamic> toJson() => _$FragmentF$other$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$other$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$other$other on FragmentF$other$other {
  FragmentF$other$other copyWith(
          {FragmentF$other$other$other? Function()? other}) =>
      FragmentF$other$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class FragmentF$other$other$other
    implements FragmentF2$other$other, FragmentF3$other, FragmentF4 {
  FragmentF$other$other$other({this.name});

  @override
  factory FragmentF$other$other$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF$other$other$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$FragmentF$other$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF$other$other$other) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF$other$other$other
    on FragmentF$other$other$other {
  FragmentF$other$other$other copyWith({String? Function()? name}) =>
      FragmentF$other$other$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class FragmentF2 {
  FragmentF2({this.other});

  @override
  factory FragmentF2.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2FromJson(json);

  final FragmentF2$other? other;

  Map<String, dynamic> toJson() => _$FragmentF2ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF2 on FragmentF2 {
  FragmentF2 copyWith({FragmentF2$other? Function()? other}) =>
      FragmentF2(other: other == null ? this.other : other());
}

const FRAGMENT_DEFINITION_FRAGMENT_F2 = const FragmentDefinitionNode(
    name: NameNode(value: 'F2'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F3'), directives: [])
          ]))
    ]));
const FRAGMENT_F2 = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F2,
  FRAGMENT_DEFINITION_FRAGMENT_F3,
  FRAGMENT_DEFINITION_FRAGMENT_F4,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF2$other implements FragmentF3 {
  FragmentF2$other({this.other});

  @override
  factory FragmentF2$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2$otherFromJson(json);

  final FragmentF2$other$other? other;

  Map<String, dynamic> toJson() => _$FragmentF2$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF2$other on FragmentF2$other {
  FragmentF2$other copyWith({FragmentF2$other$other? Function()? other}) =>
      FragmentF2$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class FragmentF2$other$other implements FragmentF3$other, FragmentF4 {
  FragmentF2$other$other({this.name});

  @override
  factory FragmentF2$other$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF2$other$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$FragmentF2$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF2$other$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF2$other$other on FragmentF2$other$other {
  FragmentF2$other$other copyWith({String? Function()? name}) =>
      FragmentF2$other$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class FragmentF3 {
  FragmentF3({this.other});

  @override
  factory FragmentF3.fromJson(Map<String, dynamic> json) =>
      _$FragmentF3FromJson(json);

  final FragmentF3$other? other;

  Map<String, dynamic> toJson() => _$FragmentF3ToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF3) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF3 on FragmentF3 {
  FragmentF3 copyWith({FragmentF3$other? Function()? other}) =>
      FragmentF3(other: other == null ? this.other : other());
}

const FRAGMENT_DEFINITION_FRAGMENT_F3 = const FragmentDefinitionNode(
    name: NameNode(value: 'F3'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'other'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'F4'), directives: [])
          ]))
    ]));
const FRAGMENT_F3 = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F3,
  FRAGMENT_DEFINITION_FRAGMENT_F4,
]);

@JsonSerializable(explicitToJson: true)
class FragmentF3$other implements FragmentF4 {
  FragmentF3$other({this.name});

  @override
  factory FragmentF3$other.fromJson(Map<String, dynamic> json) =>
      _$FragmentF3$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$FragmentF3$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF3$other) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF3$other on FragmentF3$other {
  FragmentF3$other copyWith({String? Function()? name}) =>
      FragmentF3$other(name: name == null ? this.name : name());
}

@JsonSerializable(explicitToJson: true)
class FragmentF4 {
  FragmentF4({this.name});

  @override
  factory FragmentF4.fromJson(Map<String, dynamic> json) =>
      _$FragmentF4FromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$FragmentF4ToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF4) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF4 on FragmentF4 {
  FragmentF4 copyWith({String? Function()? name}) =>
      FragmentF4(name: name == null ? this.name : name());
}

const FRAGMENT_DEFINITION_FRAGMENT_F4 = const FragmentDefinitionNode(
    name: NameNode(value: 'F4'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Type'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const FRAGMENT_F4 = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F4,
]);

@JsonSerializable(explicitToJson: true)
class QueryFetch {
  QueryFetch({this.t});

  @override
  factory QueryFetch.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchFromJson(json);

  final QueryFetch$t? t;

  Map<String, dynamic> toJson() => _$QueryFetchToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch) || runtimeType != other.runtimeType)
      return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch on QueryFetch {
  QueryFetch copyWith({QueryFetch$t? Function()? t}) =>
      QueryFetch(t: t == null ? this.t : t());
}

const QUERY_FETCH = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Fetch'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F'), directives: [])
            ]))
      ])),
  FRAGMENT_DEFINITION_FRAGMENT_F,
  FRAGMENT_DEFINITION_FRAGMENT_F2,
  FRAGMENT_DEFINITION_FRAGMENT_F3,
  FRAGMENT_DEFINITION_FRAGMENT_F4,
]);

@JsonSerializable(explicitToJson: true)
class QueryFetch$t implements FragmentF {
  QueryFetch$t({this.other});

  @override
  factory QueryFetch$t.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$tFromJson(json);

  final QueryFetch$t$other? other;

  Map<String, dynamic> toJson() => _$QueryFetch$tToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch$t on QueryFetch$t {
  QueryFetch$t copyWith({QueryFetch$t$other? Function()? other}) =>
      QueryFetch$t(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class QueryFetch$t$other implements FragmentF$other, FragmentF2 {
  QueryFetch$t$other({this.other});

  @override
  factory QueryFetch$t$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$otherFromJson(json);

  final QueryFetch$t$other$other? other;

  Map<String, dynamic> toJson() => _$QueryFetch$t$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t$other) || runtimeType != other.runtimeType)
      return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch$t$other on QueryFetch$t$other {
  QueryFetch$t$other copyWith({QueryFetch$t$other$other? Function()? other}) =>
      QueryFetch$t$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class QueryFetch$t$other$other
    implements FragmentF$other$other, FragmentF2$other, FragmentF3 {
  QueryFetch$t$other$other({this.other});

  @override
  factory QueryFetch$t$other$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$otherFromJson(json);

  final QueryFetch$t$other$other$other? other;

  Map<String, dynamic> toJson() => _$QueryFetch$t$other$otherToJson(this);
  int get hashCode {
    final l$other = other;
    return Object.hashAll([l$other]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t$other$other) ||
        runtimeType != other.runtimeType) return false;
    final l$other = other;
    final lOther$other = other.other;
    if (l$other != lOther$other) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch$t$other$other on QueryFetch$t$other$other {
  QueryFetch$t$other$other copyWith(
          {QueryFetch$t$other$other$other? Function()? other}) =>
      QueryFetch$t$other$other(other: other == null ? this.other : other());
}

@JsonSerializable(explicitToJson: true)
class QueryFetch$t$other$other$other
    implements
        FragmentF$other$other$other,
        FragmentF2$other$other,
        FragmentF3$other,
        FragmentF4 {
  QueryFetch$t$other$other$other({this.name});

  @override
  factory QueryFetch$t$other$other$other.fromJson(Map<String, dynamic> json) =>
      _$QueryFetch$t$other$other$otherFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$QueryFetch$t$other$other$otherToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetch$t$other$other$other) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetch$t$other$other$other
    on QueryFetch$t$other$other$other {
  QueryFetch$t$other$other$other copyWith({String? Function()? name}) =>
      QueryFetch$t$other$other$other(name: name == null ? this.name : name());
}

const POSSIBLE_TYPES_MAP = const {};
