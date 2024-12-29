import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  const baseUri = String.fromEnvironment('TMDB_API_URI');
  return Dio(
    BaseOptions(baseUrl: Uri.https(baseUri).toString()),
  );
}
