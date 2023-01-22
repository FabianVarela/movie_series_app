// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$actorDetailRepositoryHash() =>
    r'f03929f69e9d85673b5b96b4349f52be9b6c5dac';

/// See also [actorDetailRepository].
final actorDetailRepositoryProvider =
    AutoDisposeProvider<ActorDetailRepository>(
  actorDetailRepository,
  name: r'actorDetailRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$actorDetailRepositoryHash,
);
typedef ActorDetailRepositoryRef
    = AutoDisposeProviderRef<ActorDetailRepository>;
String _$fetchActorHash() => r'6daa4bdfd4fed3ce3ce4d3bca752f291ccdad3ec';

/// See also [fetchActor].
class FetchActorProvider extends AutoDisposeFutureProvider<ActorModel> {
  FetchActorProvider({
    required this.personId,
    this.language,
  }) : super(
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

typedef FetchActorRef = AutoDisposeFutureProviderRef<ActorModel>;

/// See also [fetchActor].
final fetchActorProvider = FetchActorFamily();

class FetchActorFamily extends Family<AsyncValue<ActorModel>> {
  FetchActorFamily();

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
  AutoDisposeFutureProvider<ActorModel> getProviderOverride(
    covariant FetchActorProvider provider,
  ) {
    return call(
      personId: provider.personId,
      language: provider.language,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchActorProvider';
}
