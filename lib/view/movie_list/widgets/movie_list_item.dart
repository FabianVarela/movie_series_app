import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_list_bloc/models/movies/movies_model.dart';

class MovieListItem extends HookWidget {
  const MovieListItem({
    super.key,
    required this.itemModel,
    required this.imageUri,
    required this.onPressItem,
    this.onExpanded,
    this.isCurrent = false,
  });

  final MovieModel itemModel;
  final String imageUri;
  final ValueSetter<MovieModel> onPressItem;
  final ValueSetter<bool>? onExpanded;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 300);

    final controller = useAnimationController(duration: duration);
    final translateAnimation = useAnimation<double>(
      Tween<double>(begin: 0, end: -60).animate(controller),
    );
    final expandAnimation = useAnimation<double>(
      Tween<double>(begin: 0.7, end: 0.8).animate(controller),
    );

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return AnimatedOpacity(
      duration: duration,
      opacity: isCurrent ? 1 : .4,
      child: Stack(
        children: <Widget>[
          Align(
            child: AnimatedContainer(
              duration: duration,
              width: width * expandAnimation,
              height: isCurrent ? height * 0.55 : height * 0.5,
              child: Card(
                elevation: 2,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Text(
                            itemModel.title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            itemModel.voteAverage.toStringAsFixed(2),
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, translateAnimation),
            child: Align(
              child: AnimatedContainer(
                duration: duration,
                width: width * 0.7,
                height: isCurrent ? height * 0.55 : height * 0.5,
                child: GestureDetector(
                  onTap: () {
                    if (controller.status == AnimationStatus.dismissed) {
                      controller.forward(from: 0);
                      onExpanded?.call(true);
                    } else if (controller.status == AnimationStatus.completed) {
                      onPressItem(itemModel);
                    }
                  },
                  onVerticalDragUpdate: (details) {
                    if (details.delta.dy > 0) {
                      controller.reverse();
                      onExpanded?.call(false);
                    }
                  },
                  child: Hero(
                    tag: 'Image_${itemModel.id}',
                    child: Card(
                      elevation: 10,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        '$imageUri${itemModel.posterPath}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
