import 'package:figmadesign/custom_navigation_bar/custom_drawer.dart';
import 'package:figmadesign/custom_navigation_bar/custom_scaffold.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: CustomDrawerState()),
    );
  }
}

class CustomDrawerState extends StatefulWidget {
  CustomDrawerState({Key? key}) : super(key: key);

  @override
  State<CustomDrawerState> createState() => _CustomDrawerStateState();
}

class _CustomDrawerStateState extends State<CustomDrawerState>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  double maxSlide = 225.0;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          final translation = maxSlide * animationController.value;
          final scaling = 1 - (animationController.value * 0.5);
          return Stack(
            children: [
              CustomDrawer(),
              Transform(
                  transform: Matrix4.identity()
                    ..translate(translation)
                    ..scale(scaling),
                  alignment: Alignment.centerLeft,
                  child: CustomScaffold(toggle)),
            ],
          );
        });
  }
}
