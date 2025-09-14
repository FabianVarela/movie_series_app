// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(actorDetailRepository)
const actorDetailRepositoryProvider = ActorDetailRepositoryProvider._();

final class ActorDetailRepositoryProvider
    extends
        $FunctionalProvider<
          ActorDetailRepository,
          ActorDetailRepository,
          ActorDetailRepository
        >
    with $Provider<ActorDetailRepository> {
  const ActorDetailRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'actorDetailRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$actorDetailRepositoryHash();

  @$internal
  @override
  $ProviderElement<ActorDetailRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ActorDetailRepository create(Ref ref) {
    return actorDetailRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ActorDetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ActorDetailRepository>(value),
    );
  }
}

String _$actorDetailRepositoryHash() =>
    r'22d846dc515232d5e2e65e9c4b8b4e20ab4236a7';

@ProviderFor(fetchActor)
const fetchActorProvider = FetchActorFamily._();

final class FetchActorProvider
    extends
        $FunctionalProvider<
          AsyncValue<ActorModel>,
          ActorModel,
          FutureOr<ActorModel>
        >
    with $FutureModifier<ActorModel>, $FutureProvider<ActorModel> {
  const FetchActorProvider._({
    required FetchActorFamily super.from,
    required ({int personId, String? language}) super.argument,
  }) : super(
         retry: null,
         name: r'fetchActorProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchActorHash();

  @override
  String toString() {
    return r'fetchActorProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<ActorModel> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ActorModel> create(Ref ref) {
    final argument = this.argument as ({int personId, String? language});
    return fetchActor(
      ref,
      personId: argument.personId,
      language: argument.language,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FetchActorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchActorHash() => r'43dbe499f89c4cdcc7c61866238b3e303f090c46';

final class FetchActorFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<ActorModel>,
          ({int personId, String? language})
        > {
  const FetchActorFamily._()
    : super(
        retry: null,
        name: r'fetchActorProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchActorProvider call({required int personId, String? language}) =>
      FetchActorProvider._(
        argument: (personId: personId, language: language),
        from: this,
      );

  @override
  String toString() => r'fetchActorProvider';
}
