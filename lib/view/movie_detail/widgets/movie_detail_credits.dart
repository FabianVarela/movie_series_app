import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/credits/credits_model.dart';
import 'package:movie_list_bloc/view/widget/credit_item.dart';

class MovieDetailCredits extends StatelessWidget {
  const MovieDetailCredits({
    super.key,
    required this.casts,
    required this.onSelectActor,
  });

  final List<CastModel> casts;
  final void Function(int, String?) onSelectActor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Cast',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        if (casts.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Center(
              child: Text(
                'No cast available',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
          )
        else
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: casts.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (_, index) => InkWell(
                onTap: () => onSelectActor(
                  casts[index].id,
                  casts[index].profilePath,
                ),
                child: CreditItem(cast: casts[index]),
              ),
            ),
          ),
      ],
    );
  }
}
