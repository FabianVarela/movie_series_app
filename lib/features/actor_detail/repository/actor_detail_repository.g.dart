// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$actorDetailRepositoryHash() =>
    r'f03929f69e9d85673b5b96b4349f52be9b6c5dac';

/// See also [actorDetailRepository].
@ProviderFor(actorDetailRepository)
final actorDetailRepositoryProvider =
    AutoDisposeProvider<ActorDetailRepository>.internal(
  actorDetailRepository,
  name: r'actorDetailRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$actorDetailRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ActorDetailRepositoryRef
    = AutoDisposeProviderRef<ActorDetailRepository>;
String _$fetchActorHash() => r'6daa4bdfd4fed3ce3ce4d3bca752f291ccdad3ec';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef FetchActorRef = AutoDisposeFutureProviderRef<ActorModel>;

/// See also [fetchActor].
@ProviderFor(fetchActor)
const fetchActorProvider = FetchActorFamily();

/// See also [fetchActor].
class FetchActorFamily extends Family<AsyncValue<ActorModel>> {
  /// See also [fetchActor].
  const FetchActorFamily();

  /// See also [fetchActor].
  FetchActorProvider call({
    required int personId,
    String? language,
  }) {
    return FetchActorProvider(
      personId: personId,
      language: language,
    );
  }

  @override
  FetchActorProvider getProviderOverride(
    covariant FetchActorProvider provider,
  ) {
    return call(
      personId: provider.personId,
      language: provider.language,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchActorProvider';
}

/// See also [fetchActor].
class FetchActorProvider extends AutoDisposeFutureProvider<ActorModel> {
  /// See also [fetchActor].
  FetchActorProvider({
    required this.personId,
    this.language,
  }) : super.internal(
          (ref) => fetchActor(
            ref,
            personId: personId,
            language: language,
          ),
          from: fetchActorProvider,
          name: r'fetchActorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchActorHash,
          dependencies: FetchActorFamily._dependencies,
          allTransitiveDependencies:
              FetchActorFamily._allTransitiveDependencies,
        );

  final int personId;
  final String? language;

  @override
  bool operator ==(Object other) {
    return other is FetchActorProvider &&
        other.personId == personId &&
        other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, personId.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
