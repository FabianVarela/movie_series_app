// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$languageRepositoryHash() =>
    r'1144b637c60835038674e289d9d1e94c91603a8b';

/// See also [languageRepository].
@ProviderFor(languageRepository)
final languageRepositoryProvider =
    AutoDisposeProvider<LanguageRepository>.internal(
  languageRepository,
  name: r'languageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$languageRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LanguageRepositoryRef = AutoDisposeProviderRef<LanguageRepository>;
String _$getLanguageHash() => r'1371cfe6d470accd691789998f0e5d9ca17c86da';

/// See also [getLanguage].
@ProviderFor(getLanguage)
final getLanguageProvider = AutoDisposeFutureProvider<String?>.internal(
  getLanguage,
  name: r'getLanguageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getLanguageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetLanguageRef = AutoDisposeFutureProviderRef<String?>;
String _$setLanguageHash() => r'6104ed7f57c4e72a4ac8d02ca186816916936beb';

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

/// See also [setLanguage].
@ProviderFor(setLanguage)
const setLanguageProvider = SetLanguageFamily();

/// See also [setLanguage].
class SetLanguageFamily extends Family<AsyncValue<bool>> {
  /// See also [setLanguage].
  const SetLanguageFamily();

  /// See also [setLanguage].
  SetLanguageProvider call({
    required String language,
  }) {
    return SetLanguageProvider(
      language: language,
    );
  }

  @override
  SetLanguageProvider getProviderOverride(
    covariant SetLanguageProvider provider,
  ) {
    return call(
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
  String? get name => r'setLanguageProvider';
}

/// See also [setLanguage].
class SetLanguageProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [setLanguage].
  SetLanguageProvider({
    required String language,
  }) : this._internal(
          (ref) => setLanguage(
            ref as SetLanguageRef,
            language: language,
          ),
          from: setLanguageProvider,
          name: r'setLanguageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setLanguageHash,
          dependencies: SetLanguageFamily._dependencies,
          allTransitiveDependencies:
              SetLanguageFamily._allTransitiveDependencies,
          language: language,
        );

  SetLanguageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.language,
  }) : super.internal();

  final String language;

  @override
  Override overrideWith(
    FutureOr<bool> Function(SetLanguageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetLanguageProvider._internal(
        (ref) => create(ref as SetLanguageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        language: language,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _SetLanguageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetLanguageProvider && other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetLanguageRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `language` of this provider.
  String get language;
}

class _SetLanguageProviderElement extends AutoDisposeFutureProviderElement<bool>
    with SetLanguageRef {
  _SetLanguageProviderElement(super.provider);

  @override
  String get language => (origin as SetLanguageProvider).language;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
