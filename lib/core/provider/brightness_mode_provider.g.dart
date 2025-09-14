// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brightness_mode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BrightnessMode)
const brightnessModeProvider = BrightnessModeProvider._();

final class BrightnessModeProvider
    extends $AsyncNotifierProvider<BrightnessMode, Brightness?> {
  const BrightnessModeProvider._()
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

String _$brightnessModeHash() => r'594642e1136183d92b06eb99aea74644b6879702';

abstract class _$BrightnessMode extends $AsyncNotifier<Brightness?> {
  FutureOr<Brightness?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Brightness?>, Brightness?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Brightness?>, Brightness?>,
              AsyncValue<Brightness?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
