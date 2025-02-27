# 0.7.2

* Remove useless extend of `JsonSerializable`

# 0.7.1

* Stricten the analysis: Gotta get them points.

# 0.7.0

* Feat: Support not including null values on input serializers
* Feat: Add utility extension containing `copyWith` method.
* Fix: Explicity call `toJson`.
* Fix: Import nested fragments and create DocumentNode for fragments
* Fix: Bad naming of variable
* Fix: Don't generate cache methods for nested fragments
* Generate fragment variables
* Generate cache write/read methods
* Make fragments concrete classes
* Improve type accuracy on interfaces
* Support scopes for multiple schemas
* Upgrade dependencies (Including analyzer!)
* Add `==` operator and `hashCode` getter on all `JSONSerializable` classes.
* Improve scalar converters
* Improve hook options
* Change property naming scheme
* Rename classes. Remove `GQL` and `GQLF` prefixes.
* Feat: Build hooks!
* Fix: Mover `parserFn` externally
* Fix: Fresh referene on `onCompleted`.


# 0.7.0-beta.12

* Feat: Support not including null values on input serializers


# 0.7.0-beta.11

* Feat: Add utility extension containing `copyWith` method.
* Fix: Explicity call `toJson`.

# 0.7.0-beta.10

* Fix: Import nested fragments and create DocumentNode for fragments
* Fix: Bad naming of variable

# 0.7.0-beta.9

* Fix: Don't generate cache methods for nested fragments

# 0.7.0-beta.8

* Generate fragment variables

# 0.7.0-beta.7

* Generate cache write/read methods
* Make fragments concrete classes
* Improve type accuracy on interfaces

# 0.7.0-beta.6

* Support scopes for multiple schemas

# 0.7.0-beta.5

* Upgrade dependencies (Including analyzer!)
* Add `==` operator and `hashCode` getter on all `JSONSerializable` classes.

# 0.7.0-beta.4

* Improve scalar converters

# 0.7.0-beta.3

* Improve hook options

# 0.7.0-beta.2

* Change property naming scheme

# 0.7.0-beta.1

* Rename classes. Remove `GQL` and `GQLF` prefixes.

# 0.6.1-beta.2

* Feat: Build hooks!

# 0.6.1-beta.1

* Fix: Mover `parserFn` externally
* Fix: Fresh referene on `onCompleted`.

# 0.6.0

* Support `generatedFileHeader`.
* Support subscription in clients.
* Use parserFn introduced in `graphql: 5.0.1-beta.4`.

# 0.6.0-beta.4

* Support `generatedFileHeader`.

# 0.6.0-beta.3

* Upgrade `graphql`.

# 0.6.0-beta.2

* Support subscription in clients.

# 0.6.0-beta.1

* Use parserFn introduced in `graphql: 5.0.1-beta.4`.

# 0.5.0

* Support `addTypename` transformation: Automatically add `__typename` to operations.
* Refactor transformation.
* Downgrade gql version to work with graphql
* Enable `addTypename` per default
* Allow for customisable asset path through the `assetPath` config option.
* Allow excluding selection-sets from getting added `__typename`.


# 0.5.0-alpha.5

* Allow excluding selection-sets from getting added `__typename`.

# 0.5.0-alpha.4

* Allow for customisable asset path through the `assetPath` config option.

# 0.5.0-alpha.3

* Enable `addTypename` per default

# 0.5.0-alpha.2

* Refactor transformation.
* Downgrade gql version to work with graphql

# 0.5.0-alpha.1

Support `addTypename` transformation: Automatically add `__typename` to operations.

# 0.5.0-alpha.0

Update dependencies

# 0.4.10

Docs: Add blog posts to README

# 0.4.9

Fix: Recursively build possible types

# 0.4.8

Fix bug that generated wrong path separators on Windows.

# 0.4.7

Fix bug in abstract fragment spread with concrete spread on concrete type.


# 0.4.6

Fix bug in fragments


# 0.4.5

Add `watchQuery` helpers.

# 0.4.4

Further improve consequtive fragment spreads, can it get any crazier!


# 0.4.3

Support fragment spread after overlapping keys.

# 0.4.2

Fix import of unused fragments and add right interfaces on fragment spread

# 0.4.1

Support arbitrary type conditions on fragment spreads

# 0.4.0

Replace `POSSIBLE_TYPE_OF_MAP` with the inverse `POSSIBLE_TYPES_MAP`


# 0.3.3

Fix bug in introspection access on union types

# 0.3.2

Print a `POSSIBLE_TYPE_OF_MAP` containing type inheritence information.

# 0.3.1

Improved interface/union fragment spread inside fragment on type.

# 0.3.0

Support fragment inheritence


# 0.2.3

Update repo paths.

# 0.2.2

Add example for the points.

# 0.2.1 

Update dependencies

# 0.2.0

Update documentation and public API.

# 0.1.0

Fix bugs and add new documentation.

# 0.0.1

Add custom scalar support

# 0.0.1-alpha.2

Add support for `graphql` and `graphql_flutter` clients.

# 0.0.1-alpha.1

Initial release
