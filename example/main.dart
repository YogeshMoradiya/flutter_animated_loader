import 'package:flutter/material.dart';
import 'package:flutter_animated_loader/src/loading_animation_widget.dart';

const Color _kAppColor = Color(0xFF1C1C1E); // dark theme
const double _kSize = 100;

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
          contentTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  void _onTapNext() {
    if (_currentPage + 1 < listOfAnimations.length) {
      _pageController.jumpToPage(_currentPage + 1);
      setState(() => _currentPage++);
    } else {
      _pageController.animateToPage(
        0,
        duration: const Duration(milliseconds: 800),
        curve: Curves.ease,
      );
      setState(() => _currentPage = 0);
    }
  }

  void _onTapPrevious() {
    if (_currentPage == 0) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('There is nothing left 🌚')));
    } else {
      _pageController.jumpToPage(_currentPage - 1);
      setState(() => _currentPage--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: listOfAnimations
          .map(
            (appBody) => Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SafeArea(
                    bottom: false,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        appBody.title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Center(child: appBody.widget)),
                ],
              ),
              bottomNavigationBar: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.chevron_left_rounded,
                          color: Colors.white,
                        ),
                        onPressed: _onTapPrevious,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                        ),
                        onPressed: _onTapNext,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class AppBody {
  final String title;
  final Widget widget;
  const AppBody(this.title, this.widget);
}

final listOfAnimations = <AppBody>[
  const AppBody(
    'flutter_animated_loader',
    Text(
      'Total animations: 20',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
  ),
  AppBody(
    'Arc Trio',
    LoadingAnimationWidget.arcTrio(color: Colors.cyanAccent, size: _kSize),
  ),
  AppBody(
    'Horizontal Spin',
    LoadingAnimationWidget.horizontalSpin(
      color: Colors.orangeAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Aurora Wave',
    LoadingAnimationWidget.auroraWave(color: Colors.purpleAccent, size: _kSize),
  ),
  AppBody(
    'Bounce Ball',
    LoadingAnimationWidget.bounceBall(color: Colors.tealAccent, size: _kSize),
  ),
  AppBody(
    'Double Arc',
    LoadingAnimationWidget.doubleArc(color: Colors.amber, size: _kSize),
  ),
  AppBody(
    'Color Flicker',
    LoadingAnimationWidget.colorFlicker(
      leftDotColor: Colors.redAccent,
      rightDotColor: Colors.blueAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Newton Swing',
    LoadingAnimationWidget.newtonSwing(color: Colors.greenAccent, size: _kSize),
  ),
  AppBody(
    'Ring Pulse',
    LoadingAnimationWidget.ringPulse(
      color: Colors.white,
      size: _kSize,
      secondCircleColor: Colors.redAccent,
      thirdCircleColor: Colors.orangeAccent,
    ),
  ),
  AppBody(
    'Tri Spin',
    LoadingAnimationWidget.triSpin(color: Colors.pinkAccent, size: _kSize),
  ),
  AppBody(
    'Stagger Wave',
    LoadingAnimationWidget.staggerWave(
      color: Colors.lightBlueAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Splash Drop',
    LoadingAnimationWidget.splashDrop(
      color: Colors.lightGreenAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Gravity Drop',
    LoadingAnimationWidget.gravityDrop(
      color: Colors.deepOrangeAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Heart Beat',
    LoadingAnimationWidget.heartBeat(color: Colors.redAccent, size: _kSize),
  ),
  AppBody(
    'Hexa Spin',
    LoadingAnimationWidget.hexaSpin(color: Colors.purpleAccent, size: _kSize),
  ),
  AppBody(
    'Pulse Track',
    LoadingAnimationWidget.pulseTrack(color: Colors.tealAccent, size: _kSize),
  ),
  AppBody(
    'Quad Spin',
    LoadingAnimationWidget.quadSpin(color: Colors.orangeAccent, size: _kSize),
  ),
  AppBody(
    'Triangle Orbit',
    LoadingAnimationWidget.triangleOrbit(
      color: Colors.cyanAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Triangular Dot',
    LoadingAnimationWidget.triangularDot(
      color: Colors.amberAccent,
      size: _kSize,
    ),
  ),
  AppBody(
    'Twist Orbit',
    LoadingAnimationWidget.twistOrbit(
      leftDotColor: Colors.redAccent,
      rightDotColor: Colors.blueAccent,
      size: _kSize,
    ),
  ),
];
