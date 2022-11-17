import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_state.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_state.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/models/gender/gender_model.dart';
import 'package:movie_list_bloc/models/movies/movies_model.dart';
import 'package:movie_list_bloc/view/movie_list/widgets/movie_list_item.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';
import 'package:movie_list_bloc/view/widget/gender_item.dart';

class MovieList extends HookWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    final currentGender = useState<int?>(null);
    final genderTitle = useState<String?>(null);

    final currentIndex = useState(0);
    final length = useState(0);

    useEffect(
      () {
        locator<GenderBloc>().getMovieGenderList();
        locator<MoviesBloc>().getMovies();

        return null;
      },
      const [],
    );

    useValueChanged<int?, void>(currentGender.value, (value, _) {
      if (currentGender.value != value) {
        locator<MoviesBloc>().getMovies(genreId: currentGender.value);
      }
    });

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Center(
              child: _BodyMovieList(
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
                _Header(
                  title: '${genderTitle.value ?? 'Popular'} Movies',
                  onSetPopular: () {
                    currentGender.value = null;
                    genderTitle.value = null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: _BodyGenreList(
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

class _Header extends StatelessWidget {
  const _Header({required this.title, required this.onSetPopular});

  final String title;
  final VoidCallback onSetPopular;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: const Icon(Icons.search_outlined),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: onSetPopular,
            child: const Icon(Icons.restart_alt_outlined),
          ),
        ],
      ),
    );
  }
}

class _BodyGenreList extends StatelessWidget {
  const _BodyGenreList({this.id, required this.onSelectGenre});

  final int? id;
  final ValueSetter<GenderModel> onSelectGenre;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenderBloc, GenderState>(
      builder: (_, state) => state.maybeWhen(
        loading: () => Center(
          child: Transform.scale(
            scale: .7,
            child: const CircularProgressIndicator(),
          ),
        ),
        success: (gender) {
          final genders = gender.genders;
          return SizedBox(
            height: 40,
            child: ListView.builder(
              itemCount: genders.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (_, i) => GenderItem(
                gender: genders[i],
                onSelectGender: onSelectGenre,
                backgroundColor: genders[i].id == id ? Colors.blueAccent : null,
                textColor: genders[i].id == id ? Colors.white : null,
              ),
            ),
          );
        },
        orElse: Offstage.new,
      ),
    );
  }
}

class _BodyMovieList extends HookWidget {
  const _BodyMovieList({
    this.index = 0,
    required this.onSelectMovie,
    this.onChangePage,
  });

  final int index;
  final ValueSetter<MovieModel> onSelectMovie;
  final void Function(int, int)? onChangePage;

  @override
  Widget build(BuildContext context) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    return BlocConsumer<MoviesBloc, MovieListState>(
      listenWhen: (current, next) => current != next,
      listener: (_, state) {
        if (state is MovieListStateSuccess) {
          state.movies.movies.isNotEmpty
              ? onChangePage?.call(index + 1, state.movies.movies.length)
              : onChangePage?.call(0, 0);
        } else {
          onChangePage?.call(0, 0);
        }
      },
      builder: (_, state) => state.when(
        initial: Offstage.new,
        loading: () => const Center(child: CircularProgressIndicator()),
        success: (data) => PageView.builder(
          controller: pageController,
          itemCount: data.movies.length,
          physics: isEnabledScroll.value
              ? const BouncingScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          onPageChanged: (i) => onChangePage?.call(i + 1, data.movies.length),
          itemBuilder: (_, i) => MovieListItem(
            itemModel: data.movies[i],
            onPressItem: onSelectMovie,
            imageUri: 'https://image.tmdb.org/t/p/w185',
            isCurrent: (index - 1) == i,
            onExpanded: (enabled) => isEnabledScroll.value = !enabled,
          ),
        ),
        error: (error) => ErrorMessage(message: error),
      ),
    );
  }
}
