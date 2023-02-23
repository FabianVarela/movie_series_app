import 'package:flutter/material.dart';
import 'package:movie_list_bloc/core/widgets/genre_item.dart';
import 'package:movie_list_bloc/features/series_detail/model/series_model.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class SeriesDetailBody extends StatelessWidget {
  const SeriesDetailBody({required this.series, super.key});

  final SeriesModel series;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              series.originalName,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
                  Text(
                    series.voteAverage.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                (series.firstAirDate ?? '').isNotEmpty
                    ? series.firstAirDate!
                    : context.l10n.noDateAvailableText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                (series.lastAirDate ?? '').isNotEmpty
                    ? series.lastAirDate!
                    : context.l10n.noDateAvailableText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          child: Text(
            series.overview,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: series.genres.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (_, i) => GenreItem(name: series.genres[i].name),
          ),
        ),
      ],
    );
  }
}
