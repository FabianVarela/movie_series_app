import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ShaderContainer extends StatefulWidget {
  const ShaderContainer.file({
    required this.child,
    required String this.filePath,
    super.key,
  }) : colors = null;

  const ShaderContainer.gradient({
    required this.child,
    required List<Color> this.colors,
    super.key,
  }) : filePath = null;

  final Widget child;
  final String? filePath;
  final List<Color>? colors;

  @override
  State<ShaderContainer> createState() => _ShaderContainerState();
}

class _ShaderContainerState extends State<ShaderContainer> {
  FragmentShader? _fragmentShader;

  @override
  void initState() {
    super.initState();
    if (widget.filePath != null) unawaited(_loadShader());
  }

  @override
  Widget build(BuildContext context) {
    if (_fragmentShader != null) {
      return CustomPaint(
        painter: _ShaderPainter.shader(shader: _fragmentShader!),
        child: widget.child,
      );
    }

    if ((widget.colors ?? []).isNotEmpty) {
      return CustomPaint(
        painter: _ShaderPainter.gradient(colors: widget.colors!),
        child: widget.child,
      );
    }

    return widget.child;
  }

  Future<void> _loadShader() async {
    final program = await FragmentProgram.fromAsset(
      'shaders/simple_shader.frag',
    );
    setState(() => _fragmentShader = program.fragmentShader());
  }
}

class _ShaderPainter extends CustomPainter {
  _ShaderPainter.shader({required FragmentShader this.shader}) : colors = null;

  _ShaderPainter.gradient({required List<Color> this.colors}) : shader = null;

  final FragmentShader? shader;
  final List<Color>? colors;

  @override
  void paint(Canvas canvas, Size size) {
    final random = Random();

    if (shader != null) {
      shader!
        ..setFloat(0, size.width)
        ..setFloat(1, size.height)
        ..setFloat(2, random.nextDouble())
        ..setFloat(3, random.nextDouble())
        ..setFloat(4, random.nextDouble())
        ..setFloat(5, 1);
    }

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..shader =
          shader ??
          LinearGradient(
            colors: colors!,
            begin: .topLeft,
            end: .bottomRight,
          ).createShader(rect);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
