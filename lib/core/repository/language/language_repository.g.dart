// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_repository.dart';

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

String $languageRepositoryHash() => r'1144b637c60835038674e289d9d1e94c91603a8b';

/// See also [languageRepository].
final languageRepositoryProvider = AutoDisposeProvider<LanguageRepository>(
  languageRepository,
  name: r'languageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $languageRepositoryHash,
);
typedef LanguageRepositoryRef = AutoDisposeProviderRef<LanguageRepository>;
String $getLanguageHash() => r'1371cfe6d470accd691789998f0e5d9ca17c86da';

/// See also [getLanguage].
final getLanguageProvider = AutoDisposeFutureProvider<String?>(
  getLanguage,
  name: r'getLanguageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $getLanguageHash,
);
typedef GetLanguageRef = AutoDisposeFutureProviderRef<String?>;
String $setLanguageHash() => r'6104ed7f57c4e72a4ac8d02ca186816916936beb';

/// See also [setLanguage].
class SetLanguageProvider extends AutoDisposeFutureProvider<bool> {
  SetLanguageProvider({
    required this.language,
  }) : super(
          (ref) => setLanguage(
            ref,
            language: language,
          ),
          from: setLanguageProvider,
          name: r'setLanguageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $setLanguageHash,
        );

  final String language;

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

typedef SetLanguageRef = AutoDisposeFutureProviderRef<bool>;

/// See also [setLanguage].
final setLanguageProvider = SetLanguageFamily();

class SetLanguageFamily extends Family<AsyncValue<bool>> {
  SetLanguageFamily();

  SetLanguageProvider call({
    required String language,
  }) {
    return SetLanguageProvider(
      language: language,
    );
  }

  @override
  AutoDisposeFutureProvider<bool> getProviderOverride(
    covariant SetLanguageProvider provider,
  ) {
    return call(
      language: provider.language,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'setLanguageProvider';
}
