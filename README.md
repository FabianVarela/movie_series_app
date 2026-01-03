# Movie/Series App

Flutter application to discover popular movies and TV series with genre filtering capabilities. Built with Riverpod
Generator for state management and dependency injection, and Go Router for navigation.

## Prerequisites

Before getting started, make sure you have the following installed:

- **Flutter SDK**: >=3.10.0 <4.0.0
- **Dart SDK**: >=3.10.0 <4.0.0
- **IDE**: VSCode or Android Studio with Flutter extensions
- **TMDB API Account**: Required for accessing movie and series data
- **Platforms**:
    - For iOS: Xcode (macOS only)
    - For Android: Android Studio or Android SDK

## Initial Setup

### 1. Clone the repository

```bash
git clone <repository-url>
cd movie_series_app
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Configure TMDB API

This project uses [The Movie Database (TMDB) API](https://www.themoviedb.org/documentation/api) to fetch movie and
series data.

#### Get your API key

1. Create an account at [TMDB](https://www.themoviedb.org/signup)
2. Go to your [account settings](https://www.themoviedb.org/settings/api)
3. Request an API key
4. Copy your API key (v3 auth)

For detailed instructions,
visit [TMDB Getting Started Guide](https://developers.themoviedb.org/4/getting-started/authorization)

#### Create configuration file

Create a `config-keys.json` file in the project's root directory with the following structure:

```json
{
  "TMDB_API_URI": "api.themoviedb.org",
  "TMDB_IMAGE_URI": "https://image.tmdb.org/t/p/original",
  "TMDB_API_KEY": "<YOUR_TMDB_API_KEY>"
}
```

Replace `<YOUR_TMDB_API_KEY>` with your actual TMDB API key.

**Important**: Add `config-keys.json` to `.gitignore` to avoid committing your API key.

### 4. Generate code

This project uses code generation for models, providers, and routing. Generate the required code:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 5. Generate localization files

The project supports multiple languages (English and Spanish). Generate the localization files:

```bash
flutter gen-l10n
```

Translation files are located at:

- `lib/l10n/arb/` directory

## Development

### Run the application

```bash
# Run with TMDB API configuration
flutter run --dart-define-from-file=config-keys.json
```

### Run on specific platform

```bash
# iOS
flutter run --dart-define-from-file=config-keys.json -d iPhone

# Android
flutter run --dart-define-from-file=config-keys.json -d android
```

### Build for production

```bash
# iOS
flutter build ios --dart-define-from-file=config-keys.json

# Android (App Bundle)
flutter build appbundle --dart-define-from-file=config-keys.json

# Android (APK)
flutter build apk --dart-define-from-file=config-keys.json
```

### Hot reload

Flutter supports hot reload. Make changes to your code and press `r` in the terminal or use your IDE's hot reload button
to see changes instantly.

## Project Structure

```
lib/
├── l10n/                  # Localization files
│   ├── arb/              # .arb files for translations
│   └── gen/              # Generated localization files
├── core/                 # Core application infrastructure
│   ├── client/          # HTTP client (Dio) configuration
│   ├── model/           # Data models and entities
│   ├── provider/        # Riverpod providers
│   ├── repository/      # Data repositories
│   ├── routes/          # Go Router configuration
│   ├── theme/           # App theming
│   └── widgets/         # Shared widgets
└── features/            # Feature modules
    ├── actor_detail/    # Actor details screen
    ├── genre_list/      # Genre filtering screen
    ├── movie_detail/    # Movie details screen
    ├── movie_list/      # Movies listing screen
    ├── no_found/        # 404 error screen
    ├── series_detail/   # Series details screen
    └── series_list/     # Series listing screen
assets/
├── images/              # App images and resources
└── github_resources/    # Screenshots and demo files
shaders/
└── simple_shader.frag   # GLSL shader file
```

## Features

### Movies

- Browse popular movies
- View movie details (synopsis, rating, release date, cast)
- Filter movies by genre
- Search movies by title
- View high-quality movie posters and backdrops

### TV Series

- Browse popular TV series
- View series details (synopsis, rating, air date, cast)
- Filter series by genre
- Search series by title
- View series posters and backdrops

### Actors

- View actor details
- See actor's biography
- Browse actor's filmography
- View actor photos

### UI/UX

- Beautiful Material Design interface
- Smooth animations and transitions
- Cached images for better performance
- Multi-language support (English/Spanish)
- Responsive layout
- Custom shader effects

## Localization (l10n)

### Add new translations

1. Edit the `.arb` files in `lib/l10n/arb/`:
    - For English translations
    - For Spanish translations

2. Add new key/value pairs:
   ```json
   {
     "@@locale": "en",
     "newKey": "New translation",
     "@newKey": {
       "description": "Description of the new key"
     }
   }
   ```

3. Regenerate localization files:
   ```bash
   flutter gen-l10n
   ```

### Add new language

1. Create a new `.arb` file in `lib/l10n/arb/`:
   ```
   app_fr.arb  # For French
   ```

2. Update iOS localization in `ios/Runner/Info.plist`:
   ```xml
   <key>CFBundleLocalizations</key>
   <array>
     <string>en</string>
     <string>es</string>
     <string>fr</string>
   </array>
   ```

3. Regenerate localization files

## Testing

### Run all tests

```bash
flutter test
```

### Run specific test file

```bash
flutter test test/path/to/test_file.dart
```

### Run tests with coverage

```bash
flutter test --coverage
```

## Code Quality

### Run code analysis

The project uses `very_good_analysis` to maintain code quality:

```bash
flutter analyze
```

### Format code

```bash
flutter format .
```

### Generate code

This project uses code generation for models and providers:

```bash
# Generate code
flutter pub run build_runner build --delete-conflicting-outputs

# Watch for changes and auto-generate
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Main Dependencies

### State Management & Architecture

- **hooks_riverpod**: State management and dependency injection
- **flutter_hooks**: React-like hooks for Flutter
- **riverpod_annotation**: Annotations for Riverpod code generation

### Navigation

- **go_router**: Declarative routing
- **go_router_paths**: Path utilities for Go Router

### Networking & Data

- **dio**: HTTP client for API calls
- **json_annotation**: JSON serialization annotations
- **freezed_annotation**: Immutable data classes

### UI Components

- **google_fonts**: Google Fonts integration
- **cached_network_image**: Image caching for better performance
- **gap**: Spacing widgets
- **url_launcher**: Launch URLs in browser

### Storage & Localization

- **shared_preferences**: Simple key-value storage
- **flutter_localizations**: Internationalization support
- **intl**: Internationalization and localization utilities

### Dev Dependencies

- **build_runner**: Code generation
- **freezed**: Immutable data classes generation
- **json_serializable**: JSON serialization code generation
- **riverpod_generator**: Riverpod code generation
- **very_good_analysis**: Strict lint rules

## Screenshots

### Android

![Android Demo](assets/github_resources/android.gif)

### iOS

![iOS Demo](assets/github_resources/ios.gif)

### Web & Desktop

Not available

## API Documentation

This project uses The Movie Database (TMDB) API:

- **Base URL**: `https://api.themoviedb.org/3/`
- **Image Base URL**: `https://image.tmdb.org/t/p/original/`
- **API Documentation**: [TMDB API Docs](https://developers.themoviedb.org/3)

### Common endpoints used:

- `/movie/popular` - Get popular movies
- `/tv/popular` - Get popular TV series
- `/movie/{movie_id}` - Get movie details
- `/tv/{tv_id}` - Get TV series details
- `/person/{person_id}` - Get actor details
- `/genre/movie/list` - Get movie genres
- `/genre/tv/list` - Get TV series genres

## Troubleshooting

### Error: "Flutter SDK not found"

Verify that Flutter is installed correctly and in your PATH:

```bash
flutter doctor
```

### config-keys.json not found

Ensure you have created the `config-keys.json` file in the root directory with your TMDB API key.

### API Key errors (401 Unauthorized)

- Verify your TMDB API key is correct in `config-keys.json`
- Ensure you're using the API key (v3 auth), not the API Read Access Token
- Check your TMDB account API settings

### Code generation fails

Clean and regenerate:

```bash
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```

### Images not loading

- Check your internet connection
- Verify TMDB_IMAGE_URI is set correctly
- Clear app cache and restart

### l10n generation error

Regenerate localization files:

```bash
flutter gen-l10n
```

### Freezed/JSON serialization errors

Make sure all generated files are up to date:

```bash
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

### iOS build fails

Clean and rebuild:

```bash
flutter clean
cd ios
pod install
cd ..
flutter build ios --dart-define-from-file=config-keys.json
```

### Android build fails

Clean project:

```bash
flutter clean
cd android
./gradlew clean
cd ..
flutter build apk --dart-define-from-file=config-keys.json
```

### Network request errors

- Check your internet connection
- Verify TMDB API is not down: [TMDB Status](https://status.themoviedb.org/)
- Check if you've exceeded your API rate limit

## Performance Optimization

This app implements several performance optimizations:

- **Image Caching**: Uses `cached_network_image` to cache images and reduce network calls
- **Lazy Loading**: Lists load data on demand as user scrolls
- **Code Generation**: Uses build_runner for compile-time code generation
- **Efficient State Management**: Riverpod provides fine-grained reactivity
- **Network Optimization**: Dio client with interceptors and error handling

## Contributing

1. Create a branch from `main`
2. Make your changes
3. Run tests: `flutter test`
4. Run analysis: `flutter analyze`
5. Format code: `flutter format .`
6. Generate code if needed: `flutter pub run build_runner build --delete-conflicting-outputs`
7. Create a Pull Request to `main`

## Security Considerations

- Never commit `config-keys.json` to version control
- Add `config-keys.json` to `.gitignore`
- Use environment-specific configurations for different builds
- Implement API key rotation for production apps
- Consider using a backend proxy for API calls in production

## Future Enhancements

Potential features for future versions:

- User authentication and favorites
- Watchlist functionality
- Movie/Series recommendations
- Search with advanced filters
- Offline mode with local caching
- User reviews and ratings
- Trailer playback
- Web and Desktop support

## License

[Include license information here]

## Credits

- Movie and TV series data provided by [The Movie Database (TMDB)](https://www.themoviedb.org/)
- This product uses the TMDB API but is not endorsed or certified by TMDB
