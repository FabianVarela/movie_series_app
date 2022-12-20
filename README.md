# Flutter · Movie/Series App

App to show popular movies and series, even filter movie and series genres. This app uses Flutter with Riverpod
generator as state management and dependency injection, for navigation uses Go Router. Also, the app is multi-language
in English and Spanish.

------

### Flutter

* Clone this project.
* If you want to rename the bundles for each platform, you must do the steps below.
    * For Android, you must rename the bundle id on ```app/build.gradle```.
    * For iOS in XCode IDE, you select ```Runner``` and change the 'Bundle Identifier' text.
* Run project and enjoy :smile:

------

## Setting Up

#### Setting arguments

* You must the uri (without http or https), your api key and the image uri (already set) in the *Dart Define command*,
  setting the additional run arguments below
  ```
  --dart-define TMDB_API_URI=<YOUR_TMDB_API_URI>
  --dart-define TMDB_API_KEY=<YOUR_TMDB_API_KEY>
  --dart-define TMDB_IMAGE_URI=https://image.tmdb.org/t/p/original
  ```

<font size="3">*For more info to get your api key, go to
this [link](https://developers.themoviedb.org/4/getting-started/authorization)*.</font>

------

### Used packages

#### Dependencies

- Cached network image ([cached_network_image](https://pub.dev/packages/cached_network_image))
- Dio ([dio](https://pub.dev/packages/dio))
- Flutter hooks ([flutter_hooks](https://pub.dev/packages/flutter_hooks))
- Freezed annotation ([freezed_annotation](https://pub.dev/packages/freezed_annotation))
- Go Router ([go_router](https://pub.dev/packages/go_router))
- Google fonts ([google_fonts](https://pub.dev/packages/google_fonts))
- Intl ([intl](https://pub.dev/packages/intl))
- Json annotation ([json_annotation](https://pub.dev/packages/json_annotation))
- Riverpod annotation ([riverpod_annotation](https://pub.dev/packages/riverpod_annotation))
- Riverpod with Hooks ([hooks_riverpod](https://pub.dev/packages/hooks_riverpod))
- Shared preferences ([shared_preferences](https://pub.dev/packages/shared_preferences))
- Url launcher ([url_launcher](https://pub.dev/packages/url_launcher))

#### Dev dependencies

- Build runner ([build_runner](https://pub.dev/packages/build_runner))
- Freezed ([freezed](https://pub.dev/packages/freezed))
- Json serializable ([json_serializable](https://pub.dev/packages/json_serializable))
- Riverpod generator ([riverpod_generator](https://pub.dev/packages/riverpod_generator))
- Very Good Analysis ([very_good_analysis](https://pub.dev/packages/very_good_analysis))
