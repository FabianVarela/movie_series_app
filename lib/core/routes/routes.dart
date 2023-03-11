import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/core/routes/bottom_navigation_scaffold.dart';
import 'package:movie_list_bloc/core/routes/page_routes.dart';
import 'package:movie_list_bloc/features/actor_detail/view/actor_detail_view.dart';
import 'package:movie_list_bloc/features/movie_detail/view/movie_detail_view.dart';
import 'package:movie_list_bloc/features/movie_list/view/movie_list_view.dart';
import 'package:movie_list_bloc/features/no_found/view/no_found_view.dart';
import 'package:movie_list_bloc/features/series_detail/view/series_detail_view.dart';
import 'package:movie_list_bloc/features/series_list/view/series_list_view.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final _actorRoute = GoRoute(
  parentNavigatorKey: _rootNavigatorKey,
  path: 'actor/:personId',
  pageBuilder: (_, state) {
    final extra = state.extra! as Map<String, dynamic>;
    final imageUrl = extra['actorImage'] as String;

    final id = int.parse(state.params['personId']!);
    return setFadePageRoute<dynamic>(
      pageKey: state.pageKey,
      child: ActorDetailView(personId: id, imageUrl: imageUrl),
    );
  },
);

final movieRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  observers: [HeroController()],
  initialLocation: '/movies',
  routes: <RouteBase>[
    StatefulShellRoute(
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          observers: [HeroController()],
          routes: <RouteBase>[
            GoRoute(
              path: '/movies',
              pageBuilder: (_, state) => setDefaultPageRoute<dynamic>(
                pageKey: state.pageKey,
                child: const MovieListView(),
              ),
              routes: <GoRoute>[
                GoRoute(
                  path: 'detail/:movieId',
                  pageBuilder: (_, state) {
                    final extra = state.extra! as Map<String, dynamic>;
                    final poster = extra['posterPath'] as String?;

                    final id = int.parse(state.params['movieId']!);
                    return setTransformPageRoute<dynamic>(
                      pageKey: state.pageKey,
                      child: MovieDetailView(
                        movieId: id,
                        movieImageUrl: poster,
                      ),
                    );
                  },
                  routes: <GoRoute>[_actorRoute],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          observers: [HeroController()],
          routes: <RouteBase>[
            GoRoute(
              path: '/series',
              pageBuilder: (_, state) => setDefaultPageRoute<dynamic>(
                pageKey: state.pageKey,
                child: const SeriesListView(),
              ),
              routes: [
                GoRoute(
                  path: 'detail/:seriesId',
                  pageBuilder: (_, state) {
                    final extra = state.extra! as Map<String, dynamic>;
                    final poster = extra['posterPath'] as String?;

                    final id = int.parse(state.params['seriesId']!);
                    return setTransformPageRoute<dynamic>(
                      pageKey: state.pageKey,
                      child: SeriesDetailView(
                        seriesId: id,
                        seriesImageUrl: poster,
                      ),
                    );
                  },
                  routes: <GoRoute>[_actorRoute],
                ),
              ],
            ),
          ],
        ),
      ],
      builder: (_, shellState, child) => BottomNavigationScaffold(
        shellState: shellState,
        child: child,
      ),
    ),
  ],
  debugLogDiagnostics: kDebugMode,
  errorBuilder: (_, state) => NoFoundView(
    error: state.error.toString(),
  ),
);
