import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preferences_provider.g.dart';

@riverpod
SharedPreferences sharedPrefs(Ref ref) {
  throw UnimplementedError('You must implement SharedPrefs provider');
}
