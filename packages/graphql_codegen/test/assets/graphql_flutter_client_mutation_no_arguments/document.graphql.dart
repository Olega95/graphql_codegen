import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

@JsonSerializable()
class MutationUpdateSNo extends JsonSerializable {
  MutationUpdateSNo({this.s});

  @override
  factory MutationUpdateSNo.fromJson(Map<String, dynamic> json) =>
      _$MutationUpdateSNoFromJson(json);

  final String? s;

  @override
  Map<String, dynamic> toJson() => _$MutationUpdateSNoToJson(this);
}

const MUTATION_UPDATE_S_NO = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSNo'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 's'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: StringValueNode(value: 'lol', isBlock: false))
            ],
            directives: [],
            selectionSet: null)
      ])),
]);
typedef GQLOnMutationCompletedMutationUpdateSNo = FutureOr<void> Function(
    dynamic, MutationUpdateSNo?);

class GQLOptionsMutationUpdateSNo
    extends graphql.MutationOptions<MutationUpdateSNo> {
  GQLOptionsMutationUpdateSNo(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSNo? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : MutationUpdateSNo.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_NO,
            parserFn: (data) => MutationUpdateSNo.fromJson(data));
}

class GQLWatchOptionsMutationUpdateSNo
    extends graphql.WatchQueryOptions<MutationUpdateSNo> {
  GQLWatchOptionsMutationUpdateSNo(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: MUTATION_UPDATE_S_NO,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => MutationUpdateSNo.fromJson(data));
}

extension GQLExtensionMutationUpdateSNo on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationUpdateSNo>> mutateUpdateSNo(
          [GQLOptionsMutationUpdateSNo? options]) async =>
      await this.mutate(options ?? GQLOptionsMutationUpdateSNo());
  graphql.ObservableQuery<MutationUpdateSNo> watchMutationUpdateSNo(
          [GQLWatchOptionsMutationUpdateSNo? options]) =>
      this.watchMutation(options ?? GQLWatchOptionsMutationUpdateSNo());
}

class GQLFOptionsMutationUpdateSNo
    extends graphql.MutationOptions<MutationUpdateSNo> {
  GQLFOptionsMutationUpdateSNo(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      GQLOnMutationCompletedMutationUpdateSNo? onCompleted,
      graphql.OnMutationUpdate? update,
      graphql.OnError? onError})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : MutationUpdateSNo.fromJson(data)),
            update: update,
            onError: onError,
            document: MUTATION_UPDATE_S_NO,
            parserFn: (data) => MutationUpdateSNo.fromJson(data));
}

typedef GQLFRunMutationMutationUpdateSNo
    = graphql.MultiSourceResult<MutationUpdateSNo> Function(
        {Object? optimisticResult});
typedef GQLFBuilderMutationUpdateSNo = widgets.Widget Function(
    GQLFRunMutationMutationUpdateSNo, graphql.QueryResult<MutationUpdateSNo>?);

class GQLFMutationUpdateSNo
    extends graphql_flutter.Mutation<MutationUpdateSNo> {
  GQLFMutationUpdateSNo(
      {widgets.Key? key,
      GQLFOptionsMutationUpdateSNo? options,
      required GQLFBuilderMutationUpdateSNo builder})
      : super(
            key: key,
            options: options ?? GQLFOptionsMutationUpdateSNo(),
            builder: (run, result) => builder(
                ({optimisticResult}) =>
                    run({}, optimisticResult: optimisticResult),
                result));
}

const POSSIBLE_TYPES_MAP = const {};
