import 'package:google_fonts/google_fonts.dart';
import 'package:material_ui/material_ui.dart';

class MovieSeriesTheme {
  static ThemeData setThemeData(BuildContext context, ColorScheme colorScheme) {
    return ThemeData.from(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: GoogleFonts.ubuntuTextTheme(
        Theme.of(context).textTheme.apply(
          bodyColor: colorScheme.onSurface,
          decorationColor: colorScheme.onSurface,
        ),
      ),
    );
  }
}
