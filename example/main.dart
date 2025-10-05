import 'package:flutter/material.dart';
import 'package:flutter_animated_loader/flutter_animated_loader.dart';

const Color _kAppColor = Color(0xFF1C1C1E);
const double _kSize = 80;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: _kAppColor,
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.deepPurple,
          contentTextStyle: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'flutter_animated_loader',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: _kAppColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: listOfAnimations.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 2 items per row
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final appBody = listOfAnimations[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black, width: 0.6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(child: appBody.widget),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 6.0),
                    child: Text(
                      appBody.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class AppBody {
  final String title;
  final Widget widget;
  const AppBody(this.title, this.widget);
}

final listOfAnimations = <AppBody>[
  /// Add new animations here
  AppBody(
    'Arc Trio',
    FlutterAnimatedLoader.arcTrio(color: Colors.cyanAccent, size: _kSize),
  ),
  AppBody(
    'Horizontal Spin',
    FlutterAnimatedLoader.horizontalSpin(
      color: Colors.orangeAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Aurora Wave',
    FlutterAnimatedLoader.auroraWave(color: Colors.purpleAccent, size: _kSize),
  ),
  AppBody(
    'Bounce Ball',
    FlutterAnimatedLoader.bounceBall(color: Colors.tealAccent, size: _kSize),
  ),
  AppBody(
    'Double Arc',
    FlutterAnimatedLoader.doubleArc(color: Colors.amber, size: _kSize),
  ),
  AppBody(
    'Color Flicker',
    FlutterAnimatedLoader.colorFlicker(
      leftDotColor: Colors.redAccent,
      rightDotColor: Colors.blueAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Newton Swing',
    FlutterAnimatedLoader.newtonSwing(color: Colors.greenAccent, size: _kSize),
  ),
  AppBody(
    'Ring Pulse',
    FlutterAnimatedLoader.ringPulse(
      color: Colors.white,
      size: _kSize,
      secondCircleColor: Colors.redAccent,
      thirdCircleColor: Colors.orangeAccent,
    ),
  ),
  AppBody(
    'Tri Spin',
    FlutterAnimatedLoader.triSpin(color: Colors.pinkAccent, size: _kSize),
  ),
  AppBody(
    'Stagger Wave',
    FlutterAnimatedLoader.staggerWave(
      color: Colors.lightBlueAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Splash Drop',
    FlutterAnimatedLoader.splashDrop(
      color: Colors.lightGreenAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Gravity Drop',
    FlutterAnimatedLoader.gravityDrop(
      color: Colors.deepOrangeAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Heart Beat',
    FlutterAnimatedLoader.heartBeat(color: Colors.redAccent, size: _kSize),
  ),
  AppBody(
    'Hexa Spin',
    FlutterAnimatedLoader.hexaSpin(color: Colors.purpleAccent, size: _kSize),
  ),
  AppBody(
    'Pulse Track',
    FlutterAnimatedLoader.pulseTrack(color: Colors.tealAccent, size: _kSize),
  ),
  AppBody(
    'Quad Spin',
    FlutterAnimatedLoader.quadSpin(color: Colors.orangeAccent, size: _kSize),
  ),
  AppBody(
    'Triangle Orbit',
    FlutterAnimatedLoader.triangleOrbit(
      color: Colors.cyanAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Triangular Dot',
    FlutterAnimatedLoader.triangularDot(
      color: Colors.amberAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Twist Orbit',
    FlutterAnimatedLoader.twistOrbit(
      leftDotColor: Colors.redAccent,
      rightDotColor: Colors.blueAccent,
      size: _kSize,
    ),
  ),
];
