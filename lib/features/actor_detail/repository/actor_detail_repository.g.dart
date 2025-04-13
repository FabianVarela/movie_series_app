// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$actorDetailRepositoryHash() =>
    r'22d846dc515232d5e2e65e9c4b8b4e20ab4236a7';

/// See also [actorDetailRepository].
@ProviderFor(actorDetailRepository)
final actorDetailRepositoryProvider =
    AutoDisposeProvider<ActorDetailRepository>.internal(
      actorDetailRepository,
      name: r'actorDetailRepositoryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$actorDetailRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ActorDetailRepositoryRef =
    AutoDisposeProviderRef<ActorDetailRepository>;
String _$fetchActorHash() => r'43dbe499f89c4cdcc7c61866238b3e303f090c46';

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

/// See also [fetchActor].
@ProviderFor(fetchActor)
const fetchActorProvider = FetchActorFamily();

/// See also [fetchActor].
class FetchActorFamily extends Family<AsyncValue<ActorModel>> {
  /// See also [fetchActor].
  const FetchActorFamily();

  /// See also [fetchActor].
  FetchActorProvider call({required int personId, String? language}) {
    return FetchActorProvider(personId: personId, language: language);
  }

  @override
  FetchActorProvider getProviderOverride(
    covariant FetchActorProvider provider,
  ) {
    return call(personId: provider.personId, language: provider.language);
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
  FetchActorProvider({required int personId, String? language})
    : this._internal(
        (ref) => fetchActor(
          ref as FetchActorRef,
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
        allTransitiveDependencies: FetchActorFamily._allTransitiveDependencies,
        personId: personId,
        language: language,
      );

  FetchActorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.personId,
    required this.language,
  }) : super.internal();

  final int personId;
  final String? language;

  @override
  Override overrideWith(
    FutureOr<ActorModel> Function(FetchActorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchActorProvider._internal(
        (ref) => create(ref as FetchActorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        personId: personId,
        language: language,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ActorModel> createElement() {
    return _FetchActorProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchActorRef on AutoDisposeFutureProviderRef<ActorModel> {
  /// The parameter `personId` of this provider.
  int get personId;

  /// The parameter `language` of this provider.
  String? get language;
}

class _FetchActorProviderElement
    extends AutoDisposeFutureProviderElement<ActorModel>
    with FetchActorRef {
  _FetchActorProviderElement(super.provider);

  @override
  int get personId => (origin as FetchActorProvider).personId;
  @override
  String? get language => (origin as FetchActorProvider).language;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
