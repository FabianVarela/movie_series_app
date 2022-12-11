import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  const baseUri = String.fromEnvironment('TMDB_API_URI');
  return Dio(
    BaseOptions(baseUrl: Uri.https(baseUri).toString()),
  );
}
