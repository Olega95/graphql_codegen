import 'package:graphql/client.dart';

import 'main.graphql.dart';

void main() async {
  final client = GraphQLClient(
    link: HttpLink("https://example.com"),
    cache: GraphQLCache(store: InMemoryStore()),
  );
  final result = await client.queryFetchPerson(
    OptionsQueryFetchPerson(
      variables: VariablesQueryFetchPerson(
        id: "id1",
      ),
    ),
  );
  final parased = result.parsedData;
  print(parased?.fetchPerson?.name);
}
