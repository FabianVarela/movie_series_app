import 'package:flutter/material.dart';
import 'package:movie_list_bloc/models/movies_model.dart';

class MovieListItem extends StatefulWidget {
  MovieListItem({
    required this.itemModel,
    required this.onPressItem,
    required this.imageUri,
    this.onExpanded,
    this.isCurrent = false,
  });

  final MoviesItemModel itemModel;
  final Function(MoviesItemModel) onPressItem;
  final String imageUri;
  final Function(bool)? onExpanded;
  final bool isCurrent;

  @override
  _MovieListItemState createState() => _MovieListItemState();
}

class _MovieListItemState extends State<MovieListItem>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _translateAnimation;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    )..addListener(() => setState(() {}));

    _translateAnimation =
        Tween<double>(begin: 0, end: -60).animate(_animationController);
    _expandAnimation =
        Tween<double>(begin: 0.7, end: 0.8).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Opacity(
      opacity: widget.isCurrent ? 1 : .4,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: width * _expandAnimation.value,
              height: widget.isCurrent ? height * 0.55 : height * 0.5,
              child: Card(
                elevation: 2,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Text(
                            '${widget.itemModel.title}',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${widget.itemModel.voteAverage.toStringAsFixed(2)}',
                            textAlign: TextAlign.end,
                            style: TextStyle(
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
            offset: Offset(0, _translateAnimation.value),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: width * 0.7,
                height: widget.isCurrent ? height * 0.55 : height * 0.5,
                child: GestureDetector(
                  onTap: () {
                    if (_animationController.status ==
                        AnimationStatus.dismissed) {
                      _animationController.forward(from: 0.0);

                      if (widget.onExpanded != null) {
                        widget.onExpanded!(true);
                      }
                    } else if (_animationController.status ==
                        AnimationStatus.completed) {
                      widget.onPressItem(widget.itemModel);
                    }
                  },
                  onVerticalDragUpdate: (DragUpdateDetails details) {
                    if (details.delta.dy > 0) {
                      _animationController.reverse();

                      if (widget.onExpanded != null) {
                        widget.onExpanded!(false);
                      }
                    }
                  },
                  child: Hero(
                    tag: 'Image_${widget.itemModel.id}',
                    child: Card(
                      elevation: 10,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        '${widget.imageUri}${widget.itemModel.posterPath}',
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
