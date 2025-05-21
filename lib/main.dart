import 'package:movie_series_app/app.dart';
import 'package:movie_series_app/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
