import 'package:flutter/material.dart';

class TransitionAppBar extends StatelessWidget {
  const TransitionAppBar({Key? key, required this.child, required this.title})
      : super(key: key);

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _TransitionAppBarDelegate(
        child: child,
        title: title,
      ),
    );
  }
}

class _TransitionAppBarDelegate extends SliverPersistentHeaderDelegate {
  _TransitionAppBarDelegate({required this.child, required this.title});

  final Widget child;
  final String title;

  final _avatarTween = SizeTween(
    begin: const Size(150, 150),
    end: const Size(50, 50),
  );

  final _avatarMarginTween = EdgeInsetsTween(
    begin: EdgeInsets.zero,
    end: const EdgeInsets.only(top: 30, left: 60),
  );

  final _avatarAlignTween = AlignmentTween(
    begin: Alignment.topCenter,
    end: Alignment.centerLeft,
  );

  final _avatarPositionedTopTween = Tween<double>(begin: 50, end: 0);

  final _titleMarginTween = EdgeInsetsTween(
    begin: const EdgeInsets.only(top: 185 + 5),
    end: const EdgeInsets.only(top: 30, left: 50 + 50 + 25),
  );

  final _titleAlignTween = AlignmentTween(
    begin: Alignment.center,
    end: Alignment.centerLeft,
  );

  final _titleSizeTween = Tween<double>(begin: 25, end: 18);

  @override
  Widget build(BuildContext ctx, double shrinkOffset, bool overlapsContent) {
    final progress = shrinkOffset / 280;

    final avatarSize = _avatarTween.lerp(progress);
    final avatarMargin = _avatarMarginTween.lerp(progress);
    final avatarAlign = _avatarAlignTween.lerp(progress);
    final positionedTween = _avatarPositionedTopTween.transform(progress);

    final titleMargin = _titleMarginTween.lerp(progress);
    final titleAlign = _titleAlignTween.lerp(progress);
    final titleSize = _titleSizeTween.transform(progress);

    return Container(
      color: Colors.blueGrey,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            top: positionedTween,
            child: Padding(
              padding: avatarMargin,
              child: Align(
                alignment: avatarAlign,
                child: SizedBox.fromSize(size: avatarSize, child: child),
              ),
            ),
          ),
          Padding(
            padding: titleMargin,
            child: Align(
              alignment: titleAlign,
              child: Text(
                title,
                style: TextStyle(fontSize: titleSize, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant _TransitionAppBarDelegate oldDelegate) =>
      child != oldDelegate.child || title != oldDelegate.title;
}
