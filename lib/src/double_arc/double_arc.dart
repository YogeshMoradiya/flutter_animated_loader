import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_animated_loader/src/util/animation_controller_utils.dart';

import '../widgets/draw_arc.dart';

class DoubleArc extends StatefulWidget {
  final double size;
  final Color color;

  const DoubleArc({super.key, required this.color, required this.size});

  @override
  DoubleArcState createState() => DoubleArcState();
}

class DoubleArcState extends State<DoubleArc>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  final Cubic firstCurve = Curves.easeInQuart;
  final Cubic secondCurve = Curves.easeOutQuart;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    final double size = widget.size;
    final double strokeWidth = size / 10;
    final Color color = widget.color;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, __) => Stack(
        children: <Widget>[
          Visibility(
            visible: _animationController.value <= 0.5,
            child: Transform.rotate(
              angle: _animationController.evalDouble(
                to: 3 * math.pi / 4,
                end: 0.5,
                curve: firstCurve,
              ),
              child: Arc.draw(
                color: color,
                size: size,
                strokeWidth: strokeWidth,
                startAngle: -math.pi / 2,
                endAngle: _animationController.evalDouble(
                  from: math.pi / (size * size),
                  to: -math.pi / 2,
                  end: 0.5,
                  curve: firstCurve,
                ),
              ),
            ),
          ),
          Visibility(
            visible: _animationController.value >= 0.5,
            child: Transform.rotate(
              angle: _animationController.evalDouble(
                from: math.pi / 4,
                to: math.pi,
                begin: 0.5,
                curve: secondCurve,
              ),
              child: Arc.draw(
                color: color,
                size: size,
                strokeWidth: strokeWidth,
                startAngle: -math.pi / 2,
                endAngle: _animationController.evalDouble(
                  from: math.pi / 2,
                  to: math.pi / (size * size),
                  begin: 0.5,
                  curve: secondCurve,
                ),
              ),
            ),
          ),

          ///
          ///second one
          ///
          ///
          Visibility(
            visible: _animationController.value <= 0.5,
            child: Transform.rotate(
              angle: _animationController.evalDouble(
                from: -math.pi,
                to: -math.pi / 4,
                end: 0.5,
                curve: firstCurve,
              ),
              child: Arc.draw(
                color: color,
                size: size,
                strokeWidth: strokeWidth,
                startAngle: -math.pi / 2,
                endAngle: _animationController.evalDouble(
                  from: math.pi / (size * size),
                  to: -math.pi / 2,
                  end: 0.5,
                  curve: firstCurve,
                ),
              ),
            ),
          ),
          Visibility(
            visible: _animationController.value >= 0.5,
            child: Transform.rotate(
              angle: _animationController.evalDouble(
                from: -3 * math.pi / 4,
                to: 0.0,
                begin: 0.5,
                end: 1.0,
                curve: secondCurve,
              ),
              child: Arc.draw(
                color: color,
                size: size,
                strokeWidth: strokeWidth,
                startAngle: -math.pi / 2,
                endAngle: _animationController.evalDouble(
                  from: math.pi / 2,
                  to: math.pi / (size * size),
                  begin: 0.5,
                  curve: secondCurve,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
