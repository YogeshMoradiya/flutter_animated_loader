import 'package:flutter/material.dart';
import 'package:flutter_modern_animated_loader/src/arc_trio/arc_trio.dart';
import 'package:flutter_modern_animated_loader/src/aurora_wave/aurora_wave.dart';
import 'package:flutter_modern_animated_loader/src/bounce_ball/bounce_ball.dart';
import 'package:flutter_modern_animated_loader/src/color_flicker/color_flicker.dart';
import 'package:flutter_modern_animated_loader/src/double_arc/double_arc.dart';
import 'package:flutter_modern_animated_loader/src/gravity_drop/gravity_drop.dart';
import 'package:flutter_modern_animated_loader/src/heart_beat/heart_beat.dart';
import 'package:flutter_modern_animated_loader/src/hexa_spin/hexa_spin.dart';
import 'package:flutter_modern_animated_loader/src/horizontal_spin/horizontal_spin.dart';
import 'package:flutter_modern_animated_loader/src/pulse_track/pulse_track.dart';
import 'package:flutter_modern_animated_loader/src/quad_spin/quad_spin.dart';
import 'package:flutter_modern_animated_loader/src/ring_pulse/ring_pulse.dart';
import 'package:flutter_modern_animated_loader/src/splash_drop/splash_drop.dart';
import 'package:flutter_modern_animated_loader/src/stagger_wave/stagger_wave.dart';
import 'package:flutter_modern_animated_loader/src/stretch_pulse/stretch_pulse.dart';
import 'package:flutter_modern_animated_loader/src/tri_spin/tri_spin.dart';
import 'package:flutter_modern_animated_loader/src/triangle_orbit/triangle_orbit.dart';
import 'package:flutter_modern_animated_loader/src/triangular_dot/triangular_dot.dart';
import 'package:flutter_modern_animated_loader/src/twist_orbit/twist_orbit.dart';

import 'newton_swing/newton_swing.dart';

class FlutterAnimatedLoader {
  FlutterAnimatedLoader._();

  /// A ball falls inside a ring cut out when face up and falls when face down.
  /// Required color is applied to the ring and dot.
  static Widget arcTrio({
    required Color color,
    required double size,
    Key? key,
  }) {
    return ArcTrio(color: color, size: size, key: key);
  }

  /// Four dots shrink to the center and expand and rotates 315 degree.
  /// Required color is applied to four dots.
  static Widget auroraWave({
    required Color color,
    required double size,
    Key? key,
  }) {
    return AuroraWave(color: color, size: size, key: key);
  }

  /// Four dots in a row left most scales down and a new dot emerge from right.
  /// Required color is applied to four dots.
  static Widget bounceBall({
    required Color color,
    required double size,
    Key? key,
  }) {
    return BounceBall(color: color, size: size, key: key);
  }

  /// Two dots swap their position while changing color.
  /// Required color is applied to both dots.
  /// Left dot takes the first color and right dot takes the second color.
  static Widget colorFlicker({
    required Color leftDotColor,
    required Color rightDotColor,
    required double size,
    Key? key,
  }) {
    return ColorFlicker(
      leftDotColor: leftDotColor,
      rightDotColor: rightDotColor,
      size: size,
      key: key,
    );
  }

  /// Three arc at 60 degree shrinks to a dot while rotating and comes back to inital.
  /// Required color is applied to all three arc.
  static Widget doubleArc({
    required Color color,
    required double size,
    Key? key,
  }) {
    return DoubleArc(color: color, size: size, key: key);
  }

  /// A ball fall from top and bounce back
  /// Required color is applied to the ball.
  static Widget gravityDrop({
    required Color color,
    required double size,
    Key? key,
  }) {
    return GravityDrop(color: color, size: size, key: key);
  }

  /// Six dots in each vertice of a hexagon emerge one by one then shrink to disappear while rotating
  /// Required color is applied to all dots.
  static Widget hexaSpin({
    required Color color,
    required double size,
    Key? key,
  }) {
    return HexaSpin(color: color, size: size, key: key);
  }

  /// One ring emerge from the center and scale up until touches the outer ring.
  /// Then the outer ring expand a bit then come back to normal.
  /// Required color is applied to both rings.
  static Widget heartBeat({
    required Color color,
    required double size,
    Key? key,
  }) {
    return HeartBeat(color: color, size: size, key: key);
  }

  /// Three dots in each vertice of an equilateral triangle expand towards side
  /// then moves to next vertice. Required color is applied to all dots.
  static Widget horizontalSpin({
    required Color color,
    required double size,
    Key? key,
  }) {
    return HorizontalSpin(color: color, size: size, key: key);
  }

  /// An equilateral triangle has two side and a dot in the empty side. The dot
  /// moves those two sides also change position. Required color is applied to
  /// two sides and the dot.
  static Widget newtonSwing({
    required Color color,
    required double size,
    Key? key,
  }) {
    return NewtonSwing(color: color, size: size, key: key);
  }

  /// Two arc place at 180 degree apart from each other. While rotating shrink to dot.
  /// Required color is applied to both arc.
  static Widget pulseTrack({
    required Color color,
    required double size,
    Key? key,
  }) {
    return PulseTrack(color: color, size: size, key: key);
  }

  /// Three dots rotates in a horizontal plane. Required color is applied to all
  /// three dots.
  static Widget quadSpin({
    required Color color,
    required double size,
    Key? key,
  }) {
    return QuadSpin(color: color, size: size, key: key);
  }

  /// Four balls swing and give newton cradle animation. Required color is
  /// applied to all four balls.
  static Widget ringPulse({
    required Color color,
    required double size,
    required Color secondCircleColor,
    required Color thirdCircleColor,
    Key? key,
  }) {
    return RingPulse(
      color: color,
      size: size,
      secondCircleColor: secondCircleColor,
      thirdCircleColor: thirdCircleColor,
      key: key,
    );
  }

  /// A dot falls down then completes a circle then become to dot again.
  /// Required color is applied to the ring and the dot.
  static Widget splashDrop({
    required Color color,
    required double size,
    Key? key,
  }) {
    return SplashDrop(color: color, size: size, key: key);
  }

  /// Five dots expands one after another like wave and then come back to
  /// original. Required color is applied to all dots.
  static Widget staggerWave({
    required Color color,
    required double size,
    Key? key,
  }) {
    return StaggerWave(color: color, size: size, key: key);
  }

  /// Five dots stretch up and shrink. Then again stretch down and shrink. Required
  /// color is applied to all dots.
  static Widget stretchPulse({
    required Color color,
    required double size,
    Key? key,
  }) {
    return StretchPulse(color: color, size: size, key: key);
  }

  /// Three dots go up and down give wave effect. Required color is applied to
  /// all dots.
  static Widget triSpin({
    required Color color,
    required double size,
    Key? key,
  }) {
    return TriSpin(color: color, size: size, key: key);
  }

  /// Three balls at each vertice of an equilateral triangle moves to the center
  /// while rotating and then again go back to origianl position. Required color
  /// is applied to all balls.
  static Widget triangleOrbit({
    required Color color,
    required double size,
    Key? key,
  }) {
    return TriangleOrbit(color: color, size: size, key: key);
  }

  /// Three dots at each vertice of an equilateral triangle moves to the center
  /// while rotating and then again go back to origianl position. Required color
  /// is applied to all dots.
  static Widget triangularDot({
    required Color color,
    required double size,
    Key? key,
  }) {
    return TriangularDot(color: color, size: size, key: key);
  }

  /// Three dots at each vertice of an equilateral triangle moves to the center
  /// while rotating and then again go back to origianl position. Required color
  /// is applied to all dots.
  static Widget twistOrbit({
    required Color leftDotColor,
    required Color rightDotColor,
    required double size,
    Key? key,
  }) {
    return TwistOrbit(
      leftDotColor: leftDotColor,
      rightDotColor: rightDotColor,
      size: size,
      key: key,
    );
  }
}
