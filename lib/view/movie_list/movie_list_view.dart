import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_state.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_body.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_genres.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_header.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MoviesBloc(context.read<MovieRepository>()),
      child: const MovieListView(),
    );
  }
}

class MovieListView extends HookWidget {
  const MovieListView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final currentGender = useState<int?>(null);
    final genderTitle = useState<String?>(null);

    final currentIndex = useState(0);
    final length = useState(0);

    useEffect(
      () {
        context.read<MoviesBloc>().getMovies();
        return null;
      },
      const [],
    );

    useValueChanged<int?, void>(currentGender.value, (value, _) {
      if (currentGender.value != value) {
        context.read<MoviesBloc>().getMovies(genreId: currentGender.value);
      }
    });

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            BlocConsumer<MoviesBloc, MovieListState>(
              listenWhen: (current, next) => current != next,
              listener: (_, state) {
                if (state is MovieListStateSuccess) {
                  if (state.movies.movies.isNotEmpty) {
                    currentIndex.value++;
                    length.value = state.movies.movies.length;

                    return;
                  }
                }

                currentIndex.value = 0;
                length.value = 0;
              },
              builder: (_, state) => state.when(
                initial: Offstage.new,
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (movie, gender) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MovieListGenres(
                      id: currentGender.value,
                      genders: gender.genders,
                      onSelectGenre: (genre) {
                        currentGender.value = genre.id;
                        genderTitle.value = genre.name;
                      },
                    ),
                    Expanded(
                      child: MovieListBody(
                        movies: movie.movies,
                        index: currentIndex.value,
                        onSelectMovie: (movie) => context.go(
                          '/detail/${movie.id}',
                          extra: {'posterPath': movie.posterPath},
                        ),
                        onChangePage: (index, size) {
                          currentIndex.value = index;
                          length.value = size;
                        },
                      ),
                    ),
                  ],
                ),
                error: (_) => ErrorMessage(message: l10n.errorMovieListText),
              ),
            ),
            MovieListHeader(
              title: genderTitle.value ?? l10n.movieListDefaultTitle,
              onRestore: () {
                currentGender.value = null;
                genderTitle.value = null;
              },
            ),
            Positioned.fill(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  l10n.quantityList(currentIndex.value, length.value),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
