import 'document1.graphql.dart';
import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document2.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class FragmentF1 {
  FragmentF1({this.name});

  @override
  factory FragmentF1.fromJson(Map<String, dynamic> json) =>
      _$FragmentF1FromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$FragmentF1ToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is FragmentF1) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionFragmentF1 on FragmentF1 {
  FragmentF1 copyWith({String? Function()? name}) =>
      FragmentF1(name: name == null ? this.name : name());
}

const FRAGMENT_DEFINITION_FRAGMENT_F1 = const FragmentDefinitionNode(
    name: NameNode(value: 'F1'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'T1'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const FRAGMENT_F1 = const DocumentNode(definitions: [
  FRAGMENT_DEFINITION_FRAGMENT_F1,
]);

@JsonSerializable(explicitToJson: true)
class QueryQ {
  QueryQ({this.t});

  @override
  factory QueryQ.fromJson(Map<String, dynamic> json) => _$QueryQFromJson(json);

  final QueryQ$t? t;

  Map<String, dynamic> toJson() => _$QueryQToJson(this);
  int get hashCode {
    final l$t = t;
    return Object.hashAll([l$t]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ) || runtimeType != other.runtimeType) return false;
    final l$t = t;
    final lOther$t = other.t;
    if (l$t != lOther$t) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ on QueryQ {
  QueryQ copyWith({QueryQ$t? Function()? t}) =>
      QueryQ(t: t == null ? this.t : t());
}

const QUERY_Q = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Q'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 't'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'F1'), directives: []),
              FragmentSpreadNode(name: NameNode(value: 'F2'), directives: [])
            ]))
      ])),
  FRAGMENT_DEFINITION_FRAGMENT_F1,
  FRAGMENT_DEFINITION_FRAGMENT_F2,
]);

@JsonSerializable(explicitToJson: true)
class QueryQ$t implements FragmentF1 {
  QueryQ$t({this.name});

  @override
  factory QueryQ$t.fromJson(Map<String, dynamic> json) =>
      _$QueryQ$tFromJson(json);

  final String? name;

  Map<String, dynamic> toJson() => _$QueryQ$tToJson(this);
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryQ$t) || runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

extension UtilityExtensionQueryQ$t on QueryQ$t {
  QueryQ$t copyWith({String? Function()? name}) =>
      QueryQ$t(name: name == null ? this.name : name());
}
