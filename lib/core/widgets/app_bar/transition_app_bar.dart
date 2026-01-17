import 'package:flutter/material.dart';
import 'package:movie_series_app/core/widgets/container/shader_container.dart';

class TransitionAppBar extends StatelessWidget {
  const TransitionAppBar({
    required this.child,
    required this.titleBuilder,
    super.key,
  });

  final Widget child;
  final Widget Function(double progress) titleBuilder;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _TransitionAppBarDelegate(
        useGradient: true,
        child: child,
        titleBuilder: titleBuilder,
      ),
    );
  }
}

class _TransitionAppBarDelegate extends SliverPersistentHeaderDelegate {
  _TransitionAppBarDelegate({
    required this.titleBuilder,
    required this.child,
    required this.useGradient,
  });

  final Widget Function(double progress) titleBuilder;
  final Widget child;
  final bool useGradient;

  final _avatarTween = SizeTween(
    begin: const Size(150, 150),
    end: const Size(50, 50),
  );

  final _avatarMarginTween = EdgeInsetsTween(
    begin: .zero,
    end: const .only(top: 35, left: 60),
  );

  final _avatarAlignTween = AlignmentTween(begin: .topCenter, end: .centerLeft);
  final _avatarPositionedTopTween = Tween<double>(begin: 60, end: 0);

  final _titleMarginTween = EdgeInsetsTween(
    begin: const .only(top: 200),
    end: const .only(top: 35, left: 110),
  );
  final _titleAlignTween = AlignmentTween(begin: .center, end: .centerLeft);

  final _titleScaleTween = Tween<double>(begin: 1, end: .72);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlaps) {
    final colorTheme = Theme.of(context).colorScheme;

    final progress = shrinkOffset / maxExtent;

    final avatarSize = _avatarTween.lerp(progress);
    final avatarMargin = _avatarMarginTween.lerp(progress);
    final avatarAlign = _avatarAlignTween.lerp(progress);
    final positionedTween = _avatarPositionedTopTween.transform(progress);

    final titleMargin = _titleMarginTween.lerp(progress);
    final titleAlign = _titleAlignTween.lerp(progress);
    final titleScale = _titleScaleTween.transform(progress);

    final stackChild = Stack(
      fit: .expand,
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
            child: Transform.scale(
              scale: titleScale,
              child: titleBuilder(progress),
            ),
          ),
        ),
        if (Navigator.canPop(context))
          Positioned(
            top: 45,
            left: 10,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
      ],
    );

    if (useGradient) {
      return ShaderContainer.gradient(
        colors: [colorTheme.secondary, colorTheme.secondaryContainer],
        child: stackChild,
      );
    }

    return ShaderContainer.file(
      filePath: 'shaders/simple_shader.frag',
      child: stackChild,
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 110;

  @override
  bool shouldRebuild(covariant _TransitionAppBarDelegate oldDelegate) =>
      child != oldDelegate.child || titleBuilder != oldDelegate.titleBuilder;
}
