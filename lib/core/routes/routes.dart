import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_paths/go_router_paths.dart';
import 'package:movie_series_app/core/routes/app_route_path.dart';
import 'package:movie_series_app/core/routes/navigation_scaffold.dart';
import 'package:movie_series_app/core/routes/page_routes.dart';
import 'package:movie_series_app/features/actor_detail/view/actor_detail_view.dart';
import 'package:movie_series_app/features/movie_detail/view/movie_detail_view.dart';
import 'package:movie_series_app/features/movie_list/view/movie_list_view.dart';
import 'package:movie_series_app/features/no_found/view/no_found_view.dart';
import 'package:movie_series_app/features/series_detail/view/series_detail_view.dart';
import 'package:movie_series_app/features/series_list/view/series_list_view.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

List<RouteBase> _actorRouteFlow({required Param origin}) {
  final actorRoutePath = switch (origin) {
    MoviesDetailRoutePath() => origin.actor,
    SeriesDetailRoutePath() => origin.actor,
    _ => null,
  };
  if (actorRoutePath == null) return <RouteBase>[];

  return <RouteBase>[
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: actorRoutePath.goRoute,
      pageBuilder: (_, state) {
        final extra = state.extra! as Map<String, dynamic>;
        final imageUrl = extra['actorImage'] as String;

        return FadeScreenPage<dynamic>(
          key: state.pageKey,
          child: ActorDetailView(
            personId: int.parse(state.pathParameters[actorRoutePath.id]!),
            imageUrl: imageUrl,
          ),
        );
      },
    ),
  ];
}

final movieRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  observers: [HeroController()],
  initialLocation: AppRoutePath.movies.goRoute,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          observers: [HeroController()],
          routes: <RouteBase>[
            GoRoute(
              path: AppRoutePath.movies.goRoute,
              pageBuilder: (_, state) {
                return ScreenPage<dynamic>(
                  key: state.pageKey,
                  child: const MovieListView(),
                );
              },
              routes: <GoRoute>[
                GoRoute(
                  path: AppRoutePath.movies.detail.goRoute,
                  pageBuilder: (_, state) {
                    final extra = state.extra! as Map<String, dynamic>;
                    final poster = extra['posterPath'] as String?;

                    return TransformScreenPage<dynamic>(
                      key: state.pageKey,
                      child: MovieDetailView(
                        movieId: int.parse(
                          state.pathParameters[AppRoutePath.movies.detail.id]!,
                        ),
                        movieImageUrl: poster,
                      ),
                    );
                  },
                  routes: _actorRouteFlow(origin: AppRoutePath.movies.detail),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          observers: [HeroController()],
          routes: <RouteBase>[
            GoRoute(
              path: AppRoutePath.series.goRoute,
              pageBuilder: (_, state) {
                return ScreenPage<dynamic>(
                  key: state.pageKey,
                  child: const SeriesListView(),
                );
              },
              routes: [
                GoRoute(
                  path: AppRoutePath.series.detail.goRoute,
                  pageBuilder: (_, state) {
                    final extra = state.extra! as Map<String, dynamic>;
                    final poster = extra['posterPath'] as String?;

                    return TransformScreenPage<dynamic>(
                      key: state.pageKey,
                      child: SeriesDetailView(
                        seriesId: int.parse(
                          state.pathParameters[AppRoutePath.series.detail.id]!,
                        ),
                        seriesImageUrl: poster,
                      ),
                    );
                  },
                  routes: _actorRouteFlow(origin: AppRoutePath.series.detail),
                ),
              ],
            ),
          ],
        ),
      ],
      builder: (_, __, navigationShell) {
        return NavigationScaffold(navigationShell: navigationShell);
      },
    ),
  ],
  debugLogDiagnostics: kDebugMode,
  errorBuilder: (_, state) => NoFoundView(error: state.error.toString()),
);
