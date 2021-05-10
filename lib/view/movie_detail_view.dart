import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/bloc/movie_detail/movie_details_bloc.dart';
import 'package:movie_list_bloc/models/credits_model.dart';
import 'package:movie_list_bloc/models/movie_model.dart';
import 'package:movie_list_bloc/models/trailer_model.dart';

class MovieDetail extends HookWidget {
  final int movieId;
  final String movieImageUrl;

  MovieDetail({required this.movieId, required this.movieImageUrl});

  // late String _imageUri;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _getImageUri();
  //
  //   _bloc.getMovie(widget.movieId);
  //
  //   Future<void>.delayed(
  //     Duration(milliseconds: 500),
  //     () => _bloc.getTrailers(widget.movieId),
  //   );
  //
  //   Future<void>.delayed(
  //     Duration(milliseconds: 1000),
  //     () => _bloc.getCredits(widget.movieId),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // GestureDetector(
            //   onVerticalDragUpdate: (DragUpdateDetails details) {
            //     if (details.delta.dy > 0) {
            //       Navigator.pop(context);
            //     }
            //   },
            //   child: Container(
            //     height: 250,
            //     width: MediaQuery.of(context).size.width,
            //     child: Hero(
            //       tag: 'Image_${widget.movieId}',
            //       child: Image.network(
            //         '${widget.movieImageUrl}',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            // ),
            // StreamBuilder<MovieModel>(
            //   stream: _bloc.movie,
            //   builder: (_, snapshot) {
            //     if (snapshot.connectionState == ConnectionState.waiting) {
            //       return Center(child: CircularProgressIndicator());
            //     }
            //
            //     return Container(
            //       padding: EdgeInsets.all(10),
            //       child: Column(
            //         //shrinkWrap: true,
            //         children: <Widget>[
            //           _setDetailSection(snapshot.data!),
            //           _setCreditsSection(),
            //           _setTrailerSection(),
            //         ],
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  Widget _setDetailSection(MovieModel movie) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              movie.title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
                  Text(
                    '${movie.voteAverage}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                movie.releaseDate,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            movie.overview,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  // Widget _setCreditsSection() {
  //   return Column(
  //     children: <Widget>[
  //       Padding(
  //         padding: EdgeInsets.symmetric(vertical: 8),
  //         child: Align(
  //           alignment: Alignment.centerLeft,
  //           child: Text(
  //             'Cast',
  //             style: TextStyle(
  //               fontSize: 25,
  //               fontWeight: FontWeight.w700,
  //             ),
  //           ),
  //         ),
  //       ),
  //       StreamBuilder<CreditsModel>(
  //         stream: _bloc.credits,
  //         builder: (_, creditsSnapshot) {
  //           if (!creditsSnapshot.hasData) {
  //             return CircularProgressIndicator();
  //           }
  //
  //           final casts = creditsSnapshot.data!.casts;
  //           if (casts.isEmpty) {
  //             return Center(
  //               child: Container(
  //                 child: Text(
  //                   'No cast available',
  //                   style: TextStyle(
  //                     fontSize: 22,
  //                     fontWeight: FontWeight.w500,
  //                   ),
  //                 ),
  //               ),
  //             );
  //           }
  //
  //           return Container(
  //             height: 120,
  //             child: ListView.builder(
  //               itemCount: casts.length,
  //               scrollDirection: Axis.horizontal,
  //               itemBuilder: (_, int index) {
  //                 final isImage = casts[index].profilePath != null;
  //
  //                 return Container(
  //                   width: 100,
  //                   padding: EdgeInsets.only(right: 10),
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: <Widget>[
  //                       CircleAvatar(
  //                         backgroundImage: isImage
  //                             ? NetworkImage(
  //                                 '$_imageUri${casts[index].profilePath}',
  //                               )
  //                             : null,
  //                         radius: 40,
  //                         child: !isImage
  //                             ? Icon(
  //                                 Icons.account_circle,
  //                                 size: 30,
  //                                 color: Colors.white,
  //                               )
  //                             : null,
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.only(top: 10),
  //                         child: Text(
  //                           '${casts[index].name}',
  //                           textAlign: TextAlign.center,
  //                           overflow: TextOverflow.ellipsis,
  //                           style: TextStyle(
  //                             fontSize: 14,
  //                             fontWeight: FontWeight.w400,
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 );
  //               },
  //             ),
  //           );
  //         },
  //       ),
  //     ],
  //   );
  // }

  // Widget _setTrailerSection() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: <Widget>[
  //       Padding(
  //         padding: EdgeInsets.symmetric(vertical: 8),
  //         child: Text(
  //           'Trailer',
  //           style: TextStyle(
  //             fontSize: 25,
  //             fontWeight: FontWeight.w700,
  //           ),
  //         ),
  //       ),
  //       StreamBuilder<TrailersModel>(
  //         stream: _bloc.trailers,
  //         builder: (_, AsyncSnapshot<TrailersModel> trailersSnapshot) {
  //           if (!trailersSnapshot.hasData) {
  //             return Center(
  //               child: CircularProgressIndicator(),
  //             );
  //           }
  //
  //           if (trailersSnapshot.data!.trailers.isEmpty) {
  //             return Center(
  //               child: Container(
  //                 child: Text(
  //                   'No trailer available',
  //                   style: TextStyle(
  //                     fontSize: 22,
  //                     fontWeight: FontWeight.w500,
  //                   ),
  //                 ),
  //               ),
  //             );
  //           }
  //
  //           return _trailerLayout(trailersSnapshot.data!.trailers);
  //         },
  //       ),
  //     ],
  //   );
  // }

  // Widget _trailerLayout(List<TrailerModel> trailers) {
  //   return Container(
  //     height: 100,
  //     child: ListView.builder(
  //       itemCount: trailers.length,
  //       scrollDirection: Axis.horizontal,
  //       itemBuilder: (_, int index) {
  //         return Container(
  //           width: 150,
  //           padding: EdgeInsets.symmetric(horizontal: 10),
  //           child: Column(
  //             children: <Widget>[
  //               Container(
  //                 margin: EdgeInsets.all(5),
  //                 height: 72,
  //                 color: Colors.grey,
  //                 child: Center(
  //                   child: Icon(Icons.play_circle_filled),
  //                 ),
  //               ),
  //               Text(
  //                 trailers[index].name,
  //                 maxLines: 1,
  //                 overflow: TextOverflow.ellipsis,
  //                 textAlign: TextAlign.center,
  //                 style: TextStyle(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w300,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  // void _getImageUri() => _imageUri = env['IMAGE_URI']!;
}
