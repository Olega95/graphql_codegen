import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen/src/printer/clients/utils.dart';
import 'package:graphql_codegen/src/printer/context.dart';
import 'package:graphql_codegen/src/printer/utils.dart';
import 'package:graphql_codegen/src/context.dart';

Spec printOnMutationCompleted(PrintContext<ContextOperation> context) =>
    FunctionType(
      (b) => b
        ..requiredParameters = ListBuilder([
          refer('dynamic'),
          TypeReference(
            (b) => b
              ..symbol = printClassName(context.path)
              ..isNullable = true,
          )
        ])
        ..returnType = TypeReference(
          (b) => b
            ..symbol = 'FutureOr'
            ..types = ListBuilder([refer("void")]),
        ),
    ).toTypeDef(printGraphQLClientOnMutationCompleteName(context.path));

Spec printQueryOptions(PrintContext<ContextOperation> c) {
  final context = c.context;
  return Class(
    (b) => b
      ..name = printGraphQLClientOptionsName(context.path)
      ..extend = TypeReference((b) => b
        ..symbol = "graphql.QueryOptions"
        ..types = ListBuilder([refer(printClassName(context.path))]))
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder(
              [
                printOptionsParameter(
                  'operationName',
                  'String',
                ),
                if (context.hasVariables)
                  printOptionsParameter(
                    'variables',
                    printVariableClassName(context.path),
                    isRequired: context.isVariablesRequired,
                  ),
                printOptionsParameter(
                  'fetchPolicy',
                  'graphql.FetchPolicy',
                ),
                printOptionsParameter(
                  'errorPolicy',
                  'graphql.ErrorPolicy',
                ),
                printOptionsParameter(
                  'cacheRereadPolicy',
                  'graphql.CacheRereadPolicy',
                ),
                printOptionsParameter(
                  'optimisticResult',
                  'Object',
                ),
                printOptionsParameter(
                  'pollInterval',
                  'Duration',
                ),
                printOptionsParameter(
                  'context',
                  'graphql.Context',
                ),
              ],
            )
            ..initializers = ListBuilder([
              refer('super').call([], {
                if (context.hasVariables && context.isVariablesRequired)
                  'variables': refer('variables').property('toJson').call([])
                else if (context.hasVariables)
                  'variables': refer('variables')
                      .nullSafeProperty('toJson')
                      .call([]).ifNullThen(literalMap({})),
                'operationName': refer('operationName'),
                'fetchPolicy': refer('fetchPolicy'),
                'errorPolicy': refer('errorPolicy'),
                'cacheRereadPolicy': refer('cacheRereadPolicy'),
                'optimisticResult': refer('optimisticResult'),
                'pollInterval': refer('pollInterval'),
                'context': refer('context'),
                'document':
                    refer(printDocumentDefinitionNodeName(context.path)),
                'parserFn': printParserFnRef(context),
              }).code,
            ]),
        ),
      ]),
  );
}

Spec printSubscriptionOptions(PrintContext<ContextOperation> c) {
  final context = c.context;
  return Class(
    (b) => b
      ..name = printGraphQLClientOptionsName(context.path)
      ..extend = generic(
        "graphql.SubscriptionOptions",
        refer(printClassName(context.path)),
      )
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder(
              [
                printOptionsParameter(
                  'operationName',
                  'String',
                ),
                if (context.hasVariables)
                  printOptionsParameter(
                    'variables',
                    printVariableClassName(context.path),
                    isRequired: context.isVariablesRequired,
                  ),
                printOptionsParameter(
                  'fetchPolicy',
                  'graphql.FetchPolicy',
                ),
                printOptionsParameter(
                  'errorPolicy',
                  'graphql.ErrorPolicy',
                ),
                printOptionsParameter(
                  'cacheRereadPolicy',
                  'graphql.CacheRereadPolicy',
                ),
                printOptionsParameter(
                  'optimisticResult',
                  'Object',
                ),
                printOptionsParameter(
                  'context',
                  'graphql.Context',
                ),
              ],
            )
            ..initializers = ListBuilder([
              refer('super').call([], {
                if (context.hasVariables && context.isVariablesRequired)
                  'variables': refer('variables').property('toJson').call([])
                else if (context.hasVariables)
                  'variables': refer('variables')
                      .nullSafeProperty('toJson')
                      .call([]).ifNullThen(literalMap({})),
                'operationName': refer('operationName'),
                'fetchPolicy': refer('fetchPolicy'),
                'errorPolicy': refer('errorPolicy'),
                'cacheRereadPolicy': refer('cacheRereadPolicy'),
                'optimisticResult': refer('optimisticResult'),
                'context': refer('context'),
                'document':
                    refer(printDocumentDefinitionNodeName(context.path)),
                'parserFn': printParserFnRef(context),
              }).code,
            ]),
        ),
      ]),
  );
}

Spec printParserFn(PrintContext context) => Method(
      (b) => b
        ..name = printParserFnName(context.path)
        ..returns = refer(printClassName(context.path))
        ..requiredParameters = ListBuilder([
          Parameter(
            (b) => b
              ..name = 'data'
              ..type = dynamicMap,
          ),
        ])
        ..body = refer(printClassName(context.path))
            .property('fromJson')
            .call([refer('data')]).code,
    );

Expression printParserFnRef(ContextOperation context) =>
    refer(printParserFnName(context.path));

Expression printOnCompletedFn(ContextOperation context) => Method(
      (b) => b
        ..lambda = true
        ..returns = refer(printClassName(context.path))
        ..requiredParameters = ListBuilder([
          Parameter((b) => b..name = 'data'),
        ])
        ..body = refer('onCompleted').call([
          refer('data'),
          printNullCheck(
            refer('data'),
            refer(printParserFnName(context.path)).call(
              [refer('data')],
            ),
          )
        ]).code,
    ).closure;

Spec printFetchMoreOptions(PrintContext context) {
  final hasVariables = context.context.hasVariables;
  final areVariablesRequired = context.context.isVariablesRequired;
  return Class(
    (b) => b
      ..name = printGraphQLClientFetchMoreOptionsName(context.path)
      ..extend = refer("graphql.FetchMoreOptions")
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..named = true
                  ..required = true
                  ..name = 'updateQuery'
                  ..type =
                      TypeReference((b) => b..symbol = 'graphql.UpdateQuery'),
              ),
              if (hasVariables)
                Parameter(
                  (b) => b
                    ..named = true
                    ..required = areVariablesRequired
                    ..name = 'variables'
                    ..type = TypeReference(
                      (b) => b
                        ..symbol = printVariableClassName(context.path)
                        ..isNullable = !areVariablesRequired,
                    ),
                ),
            ])
            ..initializers = ListBuilder([
              refer('super').call(
                [],
                {
                  'updateQuery': refer('updateQuery'),
                  if (hasVariables)
                    'variables': areVariablesRequired
                        ? refer('variables').property('toJson').call([])
                        : refer('variables')
                            .nullSafeProperty('toJson')
                            .call([]).ifNullThen(literal({})),
                  'document':
                      refer(printDocumentDefinitionNodeName(context.path)),
                },
              ).code
            ]),
        ),
      ]),
  );
}

Parameter printOptionsParameter(
  String name,
  String symbol, {
  bool isRequired = false,
  Code? defaultTo,
  List<Reference> types = const [],
}) =>
    Parameter(
      (b) => b
        ..name = name
        ..named = true
        ..required = isRequired
        ..defaultTo = defaultTo
        ..type = TypeReference(
          (b) => b
            ..isNullable = !isRequired && defaultTo == null
            ..symbol = symbol
            ..types = ListBuilder(types),
        ),
    );

Spec printMutationOptions(
  PrintContext<ContextOperation> c, {
  String? name,
  bool disableVariables = false,
}) {
  final context = c.context;
  final hasVariables = !disableVariables && context.hasVariables;
  return Class(
    (b) => b
      ..name = name ?? printGraphQLClientOptionsName(context.path)
      ..extend = TypeReference(
        (b) => b
          ..symbol = "graphql.MutationOptions"
          ..types = ListBuilder([refer(printClassName(context.path))]),
      )
      ..fields = ListBuilder([
        Field(
          (b) => b
            ..name = 'onCompletedWithParsed'
            ..type = TypeReference(
              (b) => b
                ..symbol =
                    printGraphQLClientOnMutationCompleteName(context.path)
                ..isNullable = true,
            )
            ..modifier = FieldModifier.final$,
        ),
      ])
      ..methods = ListBuilder([
        Method(
          (b) => b
            ..type = MethodType.getter
            ..name = 'properties'
            ..returns = TypeReference((b) => b
              ..symbol = 'List'
              ..types = ListBuilder([
                TypeReference(
                  (b) => b
                    ..symbol = 'Object'
                    ..isNullable = true,
                )
              ]))
            ..annotations = ListBuilder([refer('override')])
            ..lambda = true
            ..body = literalList([
              refer('super')
                  .property('onCompleted')
                  .equalTo(literalNull)
                  .conditional(
                      refer('super').property('properties'),
                      refer('super')
                          .property('properties')
                          .property('where')
                          .call([
                        Method(
                          (b) => b
                            ..lambda = true
                            ..requiredParameters = ListBuilder(
                              [Parameter((b) => b..name = 'property')],
                            )
                            ..body = refer('property')
                                .notEqualTo(refer('onCompleted'))
                                .code,
                        ).closure
                      ]))
                  .spread,
              refer('onCompletedWithParsed')
            ]).code,
        )
      ])
      ..constructors = ListBuilder(
        [
          Constructor(
            (b) => b
              ..optionalParameters = ListBuilder(
                [
                  printOptionsParameter('operationName', 'String'),
                  if (hasVariables)
                    printOptionsParameter(
                      'variables',
                      printVariableClassName(context.path),
                      isRequired: context.isVariablesRequired,
                    ),
                  printOptionsParameter(
                    'fetchPolicy',
                    'graphql.FetchPolicy',
                  ),
                  printOptionsParameter(
                    'errorPolicy',
                    'graphql.ErrorPolicy',
                  ),
                  printOptionsParameter(
                    'cacheRereadPolicy',
                    'graphql.CacheRereadPolicy',
                  ),
                  printOptionsParameter(
                    'optimisticResult',
                    'Object',
                  ),
                  printOptionsParameter(
                    'context',
                    'graphql.Context',
                  ),
                  printOptionsParameter(
                    'onCompleted',
                    printGraphQLClientOnMutationCompleteName(context.path),
                  ),
                  printOptionsParameter(
                    'update',
                    'graphql.OnMutationUpdate',
                    types: [refer(printClassName(context.path))],
                  ),
                  printOptionsParameter(
                    'onError',
                    "graphql.OnError",
                  ),
                ],
              )
              ..initializers = ListBuilder([
                refer('onCompletedWithParsed')
                    .assign(refer('onCompleted'))
                    .code,
                refer('super').call([], {
                  if (hasVariables && context.isVariablesRequired)
                    'variables': refer('variables').property('toJson').call([])
                  else if (hasVariables)
                    'variables': refer('variables')
                        .nullSafeProperty('toJson')
                        .call([]).ifNullThen(literalMap({})),
                  'operationName': refer('operationName'),
                  'fetchPolicy': refer('fetchPolicy'),
                  'errorPolicy': refer('errorPolicy'),
                  'cacheRereadPolicy': refer('cacheRereadPolicy'),
                  'optimisticResult': refer('optimisticResult'),
                  'context': refer('context'),
                  'onCompleted': printNullCheck(
                    refer('onCompleted'),
                    printOnCompletedFn(context),
                  ),
                  'update': refer('update'),
                  'onError': refer('onError'),
                  'document':
                      refer(printDocumentDefinitionNodeName(context.path)),
                  'parserFn': printParserFnRef(context),
                }).code,
              ]),
          ),
        ],
      ),
  );
}

Spec printWatchOptions(
  PrintContext<ContextOperation> c, {
  String? name,
  bool disableVariables = false,
}) {
  final context = c.context;
  final hasVariables = !disableVariables && context.hasVariables;
  return Class(
    (b) => b
      ..name = name ?? printGraphQLClientWatchOptionsName(context.path)
      ..extend = TypeReference((b) => b
        ..symbol = "graphql.WatchQueryOptions"
        ..types = ListBuilder([refer(printClassName(c.path))]))
      ..constructors = ListBuilder([
        Constructor(
          (b) => b
            ..optionalParameters = ListBuilder(
              [
                printOptionsParameter('operationName', 'String'),
                if (hasVariables)
                  printOptionsParameter(
                    'variables',
                    printVariableClassName(context.path),
                    isRequired: context.isVariablesRequired,
                  ),
                printOptionsParameter(
                  'fetchPolicy',
                  'graphql.FetchPolicy',
                ),
                printOptionsParameter(
                  'errorPolicy',
                  'graphql.ErrorPolicy',
                ),
                printOptionsParameter(
                  'cacheRereadPolicy',
                  'graphql.CacheRereadPolicy',
                ),
                printOptionsParameter(
                  'optimisticResult',
                  'Object',
                ),
                printOptionsParameter(
                  'context',
                  'graphql.Context',
                ),
                printOptionsParameter(
                  "pollInterval",
                  "Duration",
                ),
                printOptionsParameter(
                  "eagerlyFetchResults",
                  "bool",
                ),
                printOptionsParameter(
                  "carryForwardDataOnException",
                  "bool",
                  defaultTo: literalTrue.code,
                ),
                printOptionsParameter(
                  "fetchResults",
                  "bool",
                  defaultTo: literalFalse.code,
                ),
              ],
            )
            ..initializers = ListBuilder([
              refer('super').call([], {
                if (hasVariables && context.isVariablesRequired)
                  'variables': refer('variables').property('toJson').call([])
                else if (hasVariables)
                  'variables': refer('variables')
                      .nullSafeProperty('toJson')
                      .call([]).ifNullThen(literalMap({})),
                'operationName': refer('operationName'),
                'fetchPolicy': refer('fetchPolicy'),
                'errorPolicy': refer('errorPolicy'),
                'cacheRereadPolicy': refer('cacheRereadPolicy'),
                'optimisticResult': refer('optimisticResult'),
                'context': refer('context'),
                'document':
                    refer(printDocumentDefinitionNodeName(context.path)),
                'pollInterval': refer('pollInterval'),
                'eagerlyFetchResults': refer('eagerlyFetchResults'),
                'carryForwardDataOnException': refer(
                  'carryForwardDataOnException',
                ),
                'fetchResults': refer('fetchResults'),
                'parserFn': printParserFnRef(context),
              }).code,
            ]),
        ),
      ]),
  );
}

Spec printMutationExtension(PrintContext<ContextOperation> context) {
  final isOptionsRequired = context.context.isVariablesRequired;
  final optionsParameter = Parameter(
    (b) => b
      ..name = "options"
      ..type = TypeReference(
        (b) => b
          ..symbol = printGraphQLClientOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      ),
  );
  final watchOptionsParameter = Parameter(
    (b) => b
      ..name = "options"
      ..type = TypeReference(
        (b) => b
          ..symbol = printGraphQLClientWatchOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      ),
  );
  return Extension(
    (b) => b
      ..name = printGraphQLClientExtensionName(context.path)
      ..on = refer('graphql.GraphQLClient')
      ..methods = ListBuilder([
        Method(
          (b) => b
            ..modifier = MethodModifier.async
            ..name = printGraphQLClientExtensionMethodName(context.path)
            ..lambda = true
            ..requiredParameters = ListBuilder([
              if (isOptionsRequired) optionsParameter,
            ])
            ..optionalParameters = ListBuilder([
              if (!isOptionsRequired) optionsParameter,
            ])
            ..body = refer("this")
                .property("mutate")
                .call([
                  if (isOptionsRequired)
                    refer("options")
                  else
                    refer("options").ifNullThen(
                      refer(printGraphQLClientOptionsName(context.path))
                          .call([]),
                    )
                ])
                .awaited
                .code
            ..returns = TypeReference(
              (b) => b
                ..symbol = "Future"
                ..types = ListBuilder([
                  TypeReference((b) => b
                    ..symbol = 'graphql.QueryResult'
                    ..types =
                        ListBuilder([refer(printClassName(context.path))]))
                ]),
            ),
        ),
        Method(
          (b) => b
            ..name = printGraphQLClientExtensionWatchMethodName(context.path)
            ..lambda = true
            ..requiredParameters = ListBuilder([
              if (isOptionsRequired) watchOptionsParameter,
            ])
            ..optionalParameters = ListBuilder([
              if (!isOptionsRequired) watchOptionsParameter,
            ])
            ..body = refer("this").property("watchMutation").call([
              if (isOptionsRequired)
                refer("options")
              else
                refer("options").ifNullThen(
                  refer(printGraphQLClientWatchOptionsName(context.path))
                      .call([]),
                )
            ]).code
            ..returns = TypeReference((b) => b
              ..symbol = 'graphql.ObservableQuery'
              ..types = ListBuilder([refer(printClassName(context.path))])),
        ),
      ]),
  );
}

Spec printQueryExtension(PrintContext<ContextOperation> context) {
  final isOptionsRequired = context.context.isVariablesRequired;
  final optionsParameter = Parameter(
    (b) => b
      ..name = "options"
      ..type = TypeReference(
        (b) => b
          ..symbol = printGraphQLClientOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      ),
  );
  final watchOptionsParameter = Parameter(
    (b) => b
      ..name = "options"
      ..type = TypeReference(
        (b) => b
          ..symbol = printGraphQLClientWatchOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      ),
  );
  final request = refer('graphql.Request').call(
    [],
    {
      'operation': refer('graphql.Operation').call(
        [],
        {'document': refer(printDocumentDefinitionNodeName(context.path))},
      ),
      if (context.context.hasVariables)
        'variables': context.context.isVariablesRequired
            ? refer('variables').property('toJson').call([])
            : refer('variables')
                .nullSafeProperty('toJson')
                .call([]).ifNullThen(literalConstMap({}))
    },
  );
  return Extension(
    (b) => b
      ..name = printGraphQLClientExtensionName(context.path)
      ..on = refer('graphql.GraphQLClient')
      ..methods = ListBuilder([
        Method(
          (b) => b
            ..modifier = MethodModifier.async
            ..name = printGraphQLClientExtensionMethodName(context.path)
            ..lambda = true
            ..requiredParameters = ListBuilder([
              if (isOptionsRequired) optionsParameter,
            ])
            ..optionalParameters = ListBuilder([
              if (!isOptionsRequired) optionsParameter,
            ])
            ..body = refer("this")
                .property("query")
                .call([
                  if (isOptionsRequired)
                    refer("options")
                  else
                    refer("options").ifNullThen(
                      refer(printGraphQLClientOptionsName(context.path))
                          .call([]),
                    )
                ])
                .awaited
                .code
            ..returns = TypeReference(
              (b) => b
                ..symbol = "Future"
                ..types = ListBuilder([
                  TypeReference((b) => b
                    ..symbol = 'graphql.QueryResult'
                    ..types =
                        ListBuilder([refer(printClassName(context.path))]))
                ]),
            ),
        ),
        Method(
          (b) => b
            ..name = printGraphQLClientExtensionWatchMethodName(context.path)
            ..lambda = true
            ..requiredParameters = ListBuilder([
              if (isOptionsRequired) watchOptionsParameter,
            ])
            ..optionalParameters = ListBuilder([
              if (!isOptionsRequired) watchOptionsParameter,
            ])
            ..body = refer("this").property("watchQuery").call([
              if (isOptionsRequired)
                refer("options")
              else
                refer("options").ifNullThen(
                  refer(printGraphQLClientWatchOptionsName(context.path))
                      .call([]),
                )
            ]).code
            ..returns = TypeReference((b) => b
              ..symbol = 'graphql.ObservableQuery'
              ..types = ListBuilder([refer(printClassName(context.path))])),
        ),
        Method(
          (b) => b
            ..name = printGraphQLClientExtensionWriteQueryMethodName(
              context.path,
            )
            ..lambda = true
            ..optionalParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..required = true
                  ..named = true
                  ..name = 'data'
                  ..type = refer(printClassName(context.path)),
              ),
              if (context.context.hasVariables)
                Parameter(
                  (b) => b
                    ..required = context.context.isVariablesRequired
                    ..named = true
                    ..name = 'variables'
                    ..type = TypeReference(
                      (b) => b
                        ..symbol = printVariableClassName(context.path)
                        ..isNullable = !context.context.isVariablesRequired,
                    ),
                ),
              Parameter(
                (b) => b
                  ..name = 'broadcast'
                  ..named = true
                  ..required = false
                  ..type = refer('bool')
                  ..defaultTo = literalTrue.code,
              ),
            ])
            ..body = refer("this").property("writeQuery").call(
              [request],
              {
                'data': refer('data').property('toJson').call([]),
                'broadcast': refer('broadcast'),
              },
            ).code
            ..returns = refer('void'),
        ),
        Method(
          (b) => b
            ..name = printGraphQLClientExtensionReadQueryMethodName(
              context.path,
            )
            ..lambda = false
            ..optionalParameters = ListBuilder([
              if (context.context.hasVariables)
                Parameter(
                  (b) => b
                    ..required = context.context.isVariablesRequired
                    ..named = true
                    ..name = 'variables'
                    ..type = TypeReference(
                      (b) => b
                        ..symbol = printVariableClassName(context.path)
                        ..isNullable = !context.context.isVariablesRequired,
                    ),
                ),
              Parameter(
                (b) => b
                  ..name = 'optimistic'
                  ..named = true
                  ..required = false
                  ..type = refer('bool')
                  ..defaultTo = literalTrue.code,
              ),
            ])
            ..body = Block.of([
              refer("this")
                  .property("readQuery")
                  .call(
                    [request],
                    {'optimistic': refer('optimistic')},
                  )
                  .assignFinal('result')
                  .statement,
              refer('result')
                  .equalTo(literalNull)
                  .conditional(
                      literalNull,
                      refer(printClassName(context.path))
                          .property('fromJson')
                          .call([refer('result')]))
                  .returned
                  .statement
            ])
            ..returns = TypeReference(
              (b) => b
                ..symbol = printClassName(context.path)
                ..isNullable = true,
            ),
        ),
      ]),
  );
}

Spec printFragmentExtension(PrintContext<ContextFragment> context) {
  final sharedParameters = [
    Parameter(
      (b) => b
        ..required = true
        ..named = true
        ..name = 'idFields'
        ..type = dynamicMap,
    ),
    if (context.context.hasVariables)
      Parameter(
        (b) => b
          ..required = context.context.isVariablesRequired
          ..named = true
          ..name = 'variables'
          ..type = TypeReference(
            (b) => b
              ..symbol = printVariableClassName(context.path)
              ..isNullable = !context.context.isVariablesRequired,
          ),
      ),
  ];
  final fragmentName = context.context.fragment?.name.value;
  final fragmentRequest = refer('graphql.FragmentRequest').call(
    [],
    {
      'idFields': refer('idFields'),
      'fragment': refer('const graphql.Fragment').call(
        [],
        {
          if (fragmentName != null) 'fragmentName': literalString(fragmentName),
          'document': refer(printDocumentDefinitionNodeName(context.path)),
        },
      ),
      if (context.context.hasVariables)
        'variables': context.context.isVariablesRequired
            ? refer('variables').property('toJson').call([])
            : refer('variables')
                .nullSafeProperty('toJson')
                .call([]).ifNullThen(literalConstMap({})),
    },
  );
  return Extension(
    (b) => b
      ..name = printGraphQLClientExtensionName(context.path)
      ..on = refer('graphql.GraphQLClient')
      ..methods = ListBuilder([
        Method(
          (b) => b
            ..name = printGraphQLClientExtensionWriteQueryMethodName(
              context.path,
            )
            ..lambda = true
            ..optionalParameters = ListBuilder([
              Parameter(
                (b) => b
                  ..required = true
                  ..named = true
                  ..name = 'data'
                  ..type = refer(printClassName(context.path)),
              ),
              ...sharedParameters,
              Parameter(
                (b) => b
                  ..name = 'broadcast'
                  ..named = true
                  ..required = false
                  ..type = refer('bool')
                  ..defaultTo = literalTrue.code,
              ),
            ])
            ..body = refer("this").property("writeFragment").call(
              [fragmentRequest],
              {
                'data': refer('data').property('toJson').call([]),
                'broadcast': refer('broadcast'),
              },
            ).code
            ..returns = refer('void'),
        ),
        Method(
          (b) => b
            ..name = printGraphQLClientExtensionReadQueryMethodName(
              context.path,
            )
            ..lambda = false
            ..optionalParameters = ListBuilder([
              ...sharedParameters,
              Parameter(
                (b) => b
                  ..name = 'optimistic'
                  ..named = true
                  ..required = false
                  ..type = refer('bool')
                  ..defaultTo = literalTrue.code,
              ),
            ])
            ..body = Block.of([
              refer("this")
                  .property("readFragment")
                  .call(
                    [fragmentRequest],
                    {'optimistic': refer('optimistic')},
                  )
                  .assignFinal('result')
                  .statement,
              refer('result')
                  .equalTo(literalNull)
                  .conditional(
                      literalNull,
                      refer(printClassName(context.path))
                          .property('fromJson')
                          .call([refer('result')]))
                  .returned
                  .statement
            ])
            ..returns = TypeReference(
              (b) => b
                ..symbol = printClassName(context.path)
                ..isNullable = true,
            ),
        ),
      ]),
  );
}

Spec printSubscriptionExtension(PrintContext<ContextOperation> context) {
  final isOptionsRequired = context.context.isVariablesRequired;
  final optionsParameter = Parameter(
    (b) => b
      ..name = "options"
      ..type = TypeReference(
        (b) => b
          ..symbol = printGraphQLClientOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      ),
  );
  final watchOptionsParameter = Parameter(
    (b) => b
      ..name = "options"
      ..type = TypeReference(
        (b) => b
          ..symbol = printGraphQLClientWatchOptionsName(context.path)
          ..isNullable = !isOptionsRequired,
      ),
  );
  return Extension(
    (b) => b
      ..name = printGraphQLClientExtensionName(context.path)
      ..on = refer('graphql.GraphQLClient')
      ..methods = ListBuilder([
        Method(
          (b) => b
            ..name = printGraphQLClientExtensionMethodName(context.path)
            ..lambda = true
            ..requiredParameters = ListBuilder([
              if (isOptionsRequired) optionsParameter,
            ])
            ..optionalParameters = ListBuilder([
              if (!isOptionsRequired) optionsParameter,
            ])
            ..body = refer("this").property("subscribe").call([
              if (isOptionsRequired)
                refer("options")
              else
                refer("options").ifNullThen(
                  refer(printGraphQLClientOptionsName(context.path)).call([]),
                )
            ]).code
            ..returns = generic(
              'Stream',
              generic(
                'graphql.QueryResult',
                refer(printClassName(context.path)),
              ),
            ),
        ),
        Method(
          (b) => b
            ..name = printGraphQLClientExtensionWatchMethodName(context.path)
            ..lambda = true
            ..requiredParameters = ListBuilder([
              if (isOptionsRequired) watchOptionsParameter,
            ])
            ..optionalParameters = ListBuilder([
              if (!isOptionsRequired) watchOptionsParameter,
            ])
            ..body = refer("this").property("watchQuery").call([
              if (isOptionsRequired)
                refer("options")
              else
                refer("options").ifNullThen(
                  refer(printGraphQLClientWatchOptionsName(context.path))
                      .call([]),
                )
            ]).code
            ..returns = TypeReference((b) => b
              ..symbol = 'graphql.ObservableQuery'
              ..types = ListBuilder([refer(printClassName(context.path))])),
        ),
      ]),
  );
}

Iterable<Spec> printMutation(PrintContext<ContextOperation> context) {
  context.addPackage('dart:async');
  context.addPackage(
    'package:graphql/client.dart',
    'graphql',
  );
  return [
    printParserFn(context),
    printOnMutationCompleted(context),
    printMutationOptions(context),
    printWatchOptions(context),
    printMutationExtension(context),
  ];
}

Iterable<Spec> printSubscription(PrintContext<ContextOperation> context) {
  context.addPackage('dart:async');
  context.addPackage(
    'package:graphql/client.dart',
    'graphql',
  );
  return [
    printParserFn(context),
    printSubscriptionOptions(context),
    printWatchOptions(context),
    printFetchMoreOptions(context),
    printSubscriptionExtension(context),
  ];
}

Iterable<Spec> printQuery(PrintContext<ContextOperation> context) {
  context.addPackage(
    'package:graphql/client.dart',
    'graphql',
  );
  return [
    printParserFn(context),
    printQueryOptions(context),
    printWatchOptions(context),
    printFetchMoreOptions(context),
    printQueryExtension(context),
  ];
}

Iterable<Spec> printGraphQLClientSpecs(
  PrintContext<ContextOperation> c,
) {
  final context = c.context;
  final operation = context.operation;
  switch (operation?.type) {
    case OperationType.mutation:
      return printMutation(c);
    case OperationType.query:
      return printQuery(c);
    case OperationType.subscription:
      return printSubscription(c);
    default:
      return [];
  }
}

Iterable<Spec> printGraphQLClientFragmentSpecs(
  PrintContext<ContextFragment> c,
) {
  if (c.context.fragment == null) return [];
  c.addPackage(
    'package:graphql/client.dart',
    'graphql',
  );
  return [printFragmentExtension(c)];
}
