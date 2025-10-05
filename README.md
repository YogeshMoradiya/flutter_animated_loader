# 🌀 flutter_animated_loader

A **collection of 20+ beautiful, lightweight, and customizable loading animations** for Flutter developers.  
Perfect for adding smooth, modern loaders to your Flutter apps with minimal setup.

---

## 🚀 Features

✅ 20+ unique and eye-catching loading animations  
✅ Lightweight — no external dependencies  
✅ Fully customizable (color, size, speed, etc.)  
✅ Works on **Android**, **iOS**, **Web**, and **Desktop**  
✅ Easy to integrate in just a few lines of code  

---
## How to use it ?

### 1. Add dependency
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_modern_animated_loader: <latest_version>
```  

### 2. Install it You can install packages from the command line: 

with pub :
```
$ pub get
```
with Flutter : 
```
$ flutter pub get
```
### 3. Import it

Now in your `Dart` code, you can use :

```
import 'package:flutter_modern_animated_loader/flutter_animated_loader.dart';
```
### 4. Use it

## 🧩 Available Animations

| Animation Name      | Example Code                                                                                                       |
| ------------------- | ------------------------------------------------------------------------------------------------------------------ |
| **Arc Trio**        | `LoadingAnimationWidget.arcTrio(color: Colors.cyanAccent, size: 100)`                                              |
| **Horizontal Spin** | `LoadingAnimationWidget.horizontalSpin(color: Colors.orangeAccent, size: 100)`                                     |
| **Aurora Wave**     | `LoadingAnimationWidget.auroraWave(color: Colors.purpleAccent, size: 100)`                                         |
| **Bounce Ball**     | `LoadingAnimationWidget.bounceBall(color: Colors.tealAccent, size: 100)`                                           |
| **Double Arc**      | `LoadingAnimationWidget.doubleArc(color: Colors.amber, size: 100)`                                                 |
| **Color Flicker**   | `LoadingAnimationWidget.colorFlicker(leftDotColor: Colors.redAccent, rightDotColor: Colors.blueAccent, size: 100)` |
| **Newton Swing**    | `LoadingAnimationWidget.newtonSwing(color: Colors.greenAccent, size: 100)`                                         |
| **Ring Pulse**      | `LoadingAnimationWidget.ringPulse(color: Colors.white, size: 100)`                                                 |
| **Tri Spin**        | `LoadingAnimationWidget.triSpin(color: Colors.pinkAccent, size: 100)`                                              |
| **Stagger Wave**    | `LoadingAnimationWidget.staggerWave(color: Colors.lightBlueAccent, size: 100)`                                     |
| **Splash Drop**     | `LoadingAnimationWidget.splashDrop(color: Colors.lightGreenAccent, size: 100)`                                     |
| **Gravity Drop**    | `LoadingAnimationWidget.gravityDrop(color: Colors.deepOrangeAccent, size: 100)`                                    |
| **Heart Beat**      | `LoadingAnimationWidget.heartBeat(color: Colors.redAccent, size: 100)`                                             |
| **Hexa Spin**       | `LoadingAnimationWidget.hexaSpin(color: Colors.purpleAccent, size: 100)`                                           |
| **Pulse Track**     | `LoadingAnimationWidget.pulseTrack(color: Colors.tealAccent, size: 100)`                                           |
| **Quad Spin**       | `LoadingAnimationWidget.quadSpin(color: Colors.orangeAccent, size: 100)`                                           |
| **Triangle Orbit**  | `LoadingAnimationWidget.triangleOrbit(color: Colors.cyanAccent, size: 100)`                                        |
| **Triangular Dot**  | `LoadingAnimationWidget.triangularDot(color: Colors.amberAccent, size: 100)`                                       |
| **Twist Orbit**     | `LoadingAnimationWidget.twistOrbit(leftDotColor: Colors.redAccent, rightDotColor: Colors.blueAccent, size: 100)`   |


## 🛠️ Customization

| Parameter       | Type        | Description                                 |
| --------------- | ----------- | ------------------------------------------- |
| `color`         | `Color`     | Main color of the animation                 |
| `size`          | `double`    | Size of the animation                       |
| `leftDotColor`  | `Color?`    | (Optional) Secondary color for dual loaders |
| `rightDotColor` | `Color?`    | (Optional) Secondary color for dual loaders |
| `duration`      | `Duration?` | (Optional) Custom animation speed           |

### How to usage ? 
```
FlutterAnimatedLoader.colorFlicker(
      leftDotColor: Colors.redAccent,
      rightDotColor: Colors.blueAccent,
      size: 80,
    ),
```
![flutter_anim gif](https://github.com/user-attachments/assets/be354290-4bec-4c55-ae09-6955feac9fc4)

## Example :
```
/// common size 
const double _kSize = 80;

     /// Arc Trio Animation
    'Arc Trio',
    FlutterAnimatedLoader.arcTrio(color: Colors.cyanAccent, size: _kSize),

     /// horizontalSpin Animation
    FlutterAnimatedLoader.horizontalSpin(
      color: Colors.orangeAccent,
      size: _kSize,
    ),

    /// auroraWave Animation
    FlutterAnimatedLoader.auroraWave(color: Colors.purpleAccent, size: _kSize),

    /// bounceBall Animation
    FlutterAnimatedLoader.bounceBall(color: Colors.tealAccent, size: _kSize),

    /// doubleArc Animation
    FlutterAnimatedLoader.doubleArc(color: Colors.amber, size: _kSize),

    /// colorFlicker Animation
    FlutterAnimatedLoader.colorFlicker(
      leftDotColor: Colors.redAccent,
      rightDotColor: Colors.blueAccent,
      size: _kSize,
    ),

    /// newtonSwing Animation
    FlutterAnimatedLoader.newtonSwing(color: Colors.greenAccent, size: _kSize),

    /// ringPulse Animation
    FlutterAnimatedLoader.ringPulse(
      color: Colors.white,
      size: _kSize,
      secondCircleColor: Colors.redAccent,
      thirdCircleColor: Colors.orangeAccent,
    ),

    /// triSpin Animation
    FlutterAnimatedLoader.triSpin(color: Colors.pinkAccent, size: _kSize),

    /// staggerWave Animation
    FlutterAnimatedLoader.staggerWave(
      color: Colors.lightBlueAccent,
      size: _kSize,
    ),

     /// splashDrop Animation
    FlutterAnimatedLoader.splashDrop(
      color: Colors.lightGreenAccent,
      size: _kSize,
    ),
  
    /// gravityDrop Animation
    FlutterAnimatedLoader.gravityDrop(
      color: Colors.deepOrangeAccent,
      size: _kSize,
    ),

    /// Heart Beat Animation
    FlutterAnimatedLoader.heartBeat(color: Colors.redAccent, size: _kSize),

    /// Hexa Spin Animation
    FlutterAnimatedLoader.hexaSpin(color: Colors.purpleAccent, size: _kSize),
  
    /// Pulse Track Animation
    FlutterAnimatedLoader.pulseTrack(color: Colors.tealAccent, size: _kSize),
 
    /// Quad Spin Animation
    FlutterAnimatedLoader.quadSpin(color: Colors.orangeAccent, size: _kSize),

    /// triangleOrbit Animation
    FlutterAnimatedLoader.triangleOrbit(
      color: Colors.cyanAccent,
      size: _kSize,
    ),

    /// triangularDot Animtion
    FlutterAnimatedLoader.triangularDot(
      color: Colors.amberAccent,
      size: _kSize,
    ),

     /// twistOrbit Animtion
    FlutterAnimatedLoader.twistOrbit(
      leftDotColor: Colors.redAccent,
      rightDotColor: Colors.blueAccent,
      size: _kSize,
    ),
  
```
https://github.com/user-attachments/assets/f870a811-7c54-4f7b-8bac-666e1c20e4a3


---

### 🧠 Perfect For

* App splash screens
* Async data loading indicators
* File uploads/downloads
* Background tasks
* API requests
* Game loading animations
* Placeholder for content fetching

### 🔥 Why Choose flutter_animated_loader?

* ⚡ Instant setup — plug-and-play animations
* 🎨 Beautiful prebuilt designs — saves development time
* 💎 Smooth performance — built with pure Flutter animations
* 🌐 Cross-platform — runs on every Flutter-supported device
* ❤️ Open-source & developer-friendly

### 🤝 Contributing
Contributions are welcome!
If you have new animation ideas or performance improvements, please open a pull request or create an issue on GitHub.
