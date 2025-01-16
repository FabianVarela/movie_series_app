import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:movie_list_bloc/core/model/common_model.dart';
import 'package:movie_list_bloc/l10n/l10n.dart';

class DetailTrailerList extends StatelessWidget {
  const DetailTrailerList({
    required this.trailers,
    required this.onSelect,
    super.key,
  });

  final List<TrailerModel> trailers;
  final ValueSetter<String> onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            context.l10n.trailerTitle,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        if (trailers.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Center(
              child: Text(
                context.l10n.noTrailerAvailableText,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        else
          SizedBox(
            height: 120,
            child: ListView.separated(
              itemCount: trailers.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              separatorBuilder: (_, __) => const Gap(10),
              itemBuilder: (_, index) => SizedBox(
                width: 150,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (trailers[index].site == 'YouTube') {
                          onSelect(trailers[index].key);
                        }
                      },
                      child: Container(
                        height: 72,
                        margin: const EdgeInsets.all(5),
                        color: Theme.of(context).colorScheme.primaryContainer,
                        child: const Center(
                          child: Icon(Icons.play_circle_filled),
                        ),
                      ),
                    ),
                    Text(
                      trailers[index].name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
