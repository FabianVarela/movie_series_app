import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/genre/gender_state.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_state.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/models/gender_model.dart';
import 'package:movie_list_bloc/models/movies_model.dart';
import 'package:movie_list_bloc/view/movie_detail_view.dart';
import 'package:movie_list_bloc/view/widget/error_message.dart';
import 'package:movie_list_bloc/view/widget/gender_item.dart';
import 'package:movie_list_bloc/view/widget/movie_list_item.dart';

class MovieList extends HookWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentGender = useState<int?>(null);
    final genderTitle = useState('Popular');

    final currentIndex = useState(0);
    final length = useState(0);

    useEffect(() {
      Future.microtask(() {
        locator<GenderBloc>().getMovieGenderList();
        locator<MoviesBloc>().getMovies();
      });
    }, const []);

    useValueChanged<int?, void>(currentGender.value, (oldValue, _) {
      if (currentGender.value != oldValue) {
        locator<MoviesBloc>().getMovies(genreId: currentGender.value);
      }
    });

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: _BodyGenreList(
                  currentId: currentGender.value,
                  onSelectGenre: (genre) {
                    currentGender.value = genre.id;
                    genderTitle.value = genre.name;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .75,
                child: _BodyMovieList(
                  index: currentIndex.value,
                  onSelectMovie: (movie) => _openDetailPage(context, movie),
                  onChangePage: (index, size) {
                    currentIndex.value = index;
                    length.value = size;
                  },
                ),
              ),
            ],
          ),
          _Header(
            title: '${genderTitle.value} Movies',
            onSetPopular: () {
              currentGender.value = null;
              genderTitle.value = 'Popular';
            },
          ),
          Positioned.fill(
            child: _Footer(index: currentIndex.value, length: length.value),
          ),
        ],
      ),
    );
  }

  void _openDetailPage(BuildContext ctx, MovieModel movie) {
    Navigator.push<void>(
      ctx,
      PageRouteBuilder<dynamic>(
        pageBuilder: (_, __, ___) => MovieDetail(
          movieId: movie.id,
          movieImageUrl: 'https://image.tmdb.org/t/p/w185${movie.posterPath}',
        ),
        transitionsBuilder: (_, animation, __, child) =>
            Transform.scale(scale: animation.value, child: child),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key, required this.title, required this.onSetPopular})
      : super(key: key);

  final String title;
  final VoidCallback onSetPopular;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Icon(Icons.search, color: Colors.white),
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: onSetPopular,
              child: const Icon(
                Icons.collections_bookmark,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BodyGenreList extends StatelessWidget {
  const _BodyGenreList({Key? key, required this.onSelectGenre, this.currentId})
      : super(key: key);

  final int? currentId;
  final ValueSetter<GenderModel> onSelectGenre;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenderBloc, GenderState>(builder: (_, state) {
      return state.when(
        initial: () => const Offstage(),
        loading: () => const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
          ),
        ),
        success: (gender) => gender.genders.isEmpty
            ? const Center(
                child: Text(
                  'No genres available',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              )
            : SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: gender.genders.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) {
                    return GenderItem(
                      gender: gender.genders[i],
                      onSelectGender: onSelectGenre,
                      backgroundColor: gender.genders[i].id == currentId
                          ? Colors.blueAccent
                          : null,
                      textColor: gender.genders[i].id == currentId
                          ? Colors.white
                          : null,
                    );
                  },
                ),
              ),
        error: (error) => ErrorMessage(message: error, fontSize: 15),
      );
    });
  }
}

class _BodyMovieList extends HookWidget {
  const _BodyMovieList({
    Key? key,
    this.index = -1,
    required this.onSelectMovie,
    required this.onChangePage,
  }) : super(key: key);

  final int index;
  final ValueSetter<MovieModel> onSelectMovie;
  final Function(int, int) onChangePage;

  @override
  Widget build(BuildContext context) {
    final isEnabledScroll = useState(true);
    final pageController = usePageController(viewportFraction: .8);

    return BlocBuilder<MoviesBloc, MovieListState>(builder: (context, state) {
      return state.when(
        initial: () => const Offstage(),
        loading: () {
          Future<void>.microtask(() => onChangePage(-1, 0));
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          );
        },
        success: (data) {
          Future<void>.microtask(
            () => onChangePage(index == -1 ? 0 : index, data.movies.length),
          );

          return PageView.builder(
            itemCount: data.movies.length,
            physics: isEnabledScroll.value
                ? const BouncingScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: (i) => onChangePage(i, data.movies.length),
            itemBuilder: (_, i) => MovieListItem(
              itemModel: data.movies[i],
              onPressItem: onSelectMovie,
              imageUri: 'https://image.tmdb.org/t/p/w185',
              isCurrent: index == i,
              onExpanded: (enabled) => isEnabledScroll.value = !enabled,
            ),
          );
        },
        error: (error) {
          Future<void>.microtask(() => onChangePage(-1, 0));
          return ErrorMessage(message: error);
        },
      );
    });
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key, this.index = 0, this.length = 0}) : super(key: key);

  final int index;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          '${index + 1} / $length',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
