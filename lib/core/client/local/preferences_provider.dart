import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preferences_provider.g.dart';

@riverpod
SharedPreferences sharedPrefs(SharedPrefsRef ref) {
  throw UnimplementedError('You must implement SharedPrefs provider');
}
