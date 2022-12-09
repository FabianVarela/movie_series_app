import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/common/page_routes.dart';
import 'package:movie_list_bloc/features/movie_list/view/movie_list_view.dart';
import 'package:movie_list_bloc/view/actor_detail/actor_detail_view.dart';
import 'package:movie_list_bloc/view/movie_detail/movie_detail_view.dart';
import 'package:movie_list_bloc/view/no_found_view.dart';

final movieRouter = GoRouter(
  observers: [HeroController()],
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      pageBuilder: (_, state) => setDefaultPageRoute<dynamic>(
        pageKey: state.pageKey,
        child: const MovieListView(),
      ),
      routes: <GoRoute>[
        GoRoute(
          path: 'detail/:movieId',
          pageBuilder: (_, state) {
            final extra = state.extra! as Map<String, dynamic>;
            final imageUrl = extra['posterPath'] as String;

            final id = int.parse(state.params['movieId']!);
            return setTransformPageRoute<dynamic>(
              pageKey: state.pageKey,
              child: MovieDetailPage(movieId: id, movieImageUrl: imageUrl),
            );
          },
          routes: <GoRoute>[
            GoRoute(
              path: 'actor/:personId',
              pageBuilder: (_, state) {
                final extra = state.extra! as Map<String, dynamic>;
                final imageUrl = extra['actorImage'] as String;

                final id = int.parse(state.params['personId']!);
                return setFadePageRoute<dynamic>(
                  pageKey: state.pageKey,
                  child: ActorDetailPage(personId: id, imageUrl: imageUrl),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (_, state) => NoFoundView(
    error: state.error.toString(),
  ),
);
