import 'package:material_ui/material_ui.dart';

class MovieSeriesTheme {
  static ThemeData setThemeData(BuildContext context, ColorScheme colorScheme) {
    return ThemeData.from(
      useMaterial3: true,
      colorScheme: colorScheme,
      // TODO(FV): Uncomment when fix this issue
      /*
      textTheme: GoogleFonts.ubuntuTextTheme(
        Theme.of(context).textTheme.apply(
          bodyColor: colorScheme.onSurface,
          decorationColor: colorScheme.onSurface,
        ),
      ),
      */
    );
  }
}
