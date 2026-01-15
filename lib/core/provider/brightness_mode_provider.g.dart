// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brightness_mode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BrightnessMode)
final brightnessModeProvider = BrightnessModeProvider._();

final class BrightnessModeProvider
    extends $AsyncNotifierProvider<BrightnessMode, Brightness?> {
  BrightnessModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'brightnessModeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$brightnessModeHash();

  @$internal
  @override
  BrightnessMode create() => BrightnessMode();
}

String _$brightnessModeHash() => r'a282a0cec166da5bce6162b9f8347c4832ea527c';

abstract class _$BrightnessMode extends $AsyncNotifier<Brightness?> {
  FutureOr<Brightness?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Brightness?>, Brightness?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Brightness?>, Brightness?>,
              AsyncValue<Brightness?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
