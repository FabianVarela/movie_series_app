import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedCardItem extends HookWidget {
  const AnimatedCardItem({
    required this.id,
    required this.name,
    required this.onPress,
    super.key,
    this.voteAverage = 0.0,
    this.imageUrl,
    this.onExpanded,
    this.isCurrent = false,
  });

  final int id;
  final String name;
  final double voteAverage;
  final String? imageUrl;
  final VoidCallback onPress;
  final ValueSetter<bool>? onExpanded;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    const imdbImageUri = String.fromEnvironment('TMDB_IMAGE_URI');
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

    final imageWidget = Image(
      image: CachedNetworkImageProvider('$imdbImageUri$imageUrl'),
      fit: BoxFit.cover,
      errorBuilder: (_, __, ___) => Image.asset(
        'assets/images/poster_not_available.jpg',
        fit: BoxFit.cover,
      ),
    );

    precacheImage(imageWidget.image, context);

    return WillPopScope(
      onWillPop: () async {
        if (defaultTargetPlatform == TargetPlatform.iOS) return true;

        final statuses = [AnimationStatus.reverse, AnimationStatus.dismissed];
        if (!statuses.contains(controller.status)) {
          await controller.reverse();
          onExpanded?.call(false);

          return false;
        }

        return true;
      },
      child: AnimatedOpacity(
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
                              name,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              voteAverage.toStringAsFixed(2),
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
                      final status = controller.status;
                      if (status == AnimationStatus.dismissed) {
                        controller.forward(from: 0);
                        onExpanded?.call(true);
                      } else if (status == AnimationStatus.completed) {
                        onPress();
                      }
                    },
                    onVerticalDragUpdate: (details) {
                      if (details.delta.dy > 0) {
                        controller.reverse();
                        onExpanded?.call(false);
                      }
                    },
                    child: Hero(
                      tag: 'Image_$id',
                      child: Card(
                        elevation: 10,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: imageWidget,
                      ),
                    ),
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
