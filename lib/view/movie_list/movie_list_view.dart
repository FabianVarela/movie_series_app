import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/repository/movie_repository.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_body.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_genres.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_header.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => MoviesBloc(context.read<MovieRepository>()),
        ),
        BlocProvider(
          create: (_) => GenderBloc(context.read<MovieRepository>()),
        ),
      ],
      child: const MovieListView(),
    );
  }
}

class MovieListView extends HookWidget {
  const MovieListView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentGender = useState<int?>(null);
    final genderTitle = useState<String?>(null);

    final currentIndex = useState(0);
    final length = useState(0);

    useEffect(
      () {
        context.read<MoviesBloc>().getMovies();
        context.read<GenderBloc>().getMovieGenderList();

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
            Center(
              child: MovieListBody(
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
            Column(
              children: <Widget>[
                MovieListHeader(
                  title: '${genderTitle.value ?? 'Popular'} Movies',
                  onRestore: () {
                    currentGender.value = null;
                    genderTitle.value = null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: MovieListGenres(
                    id: currentGender.value,
                    onSelectGenre: (genre) {
                      currentGender.value = genre.id;
                      genderTitle.value = genre.name;
                    },
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  '${currentIndex.value} / ${length.value}',
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
