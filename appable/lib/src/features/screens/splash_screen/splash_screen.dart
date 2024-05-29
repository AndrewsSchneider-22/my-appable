//import 'dart:js';

import 'package:appable/src/constraints/sizes.dart';
import 'package:appable/src/constraints/text_strings.dart';
import 'package:appable/src/features/screens/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: animate ? 0 : -40,
              left: animate ? 0 : -30,
              child: const Image(
                image: AssetImage("assets/images/splash_images/code_logo-1.png"),
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 60,
              left: animate ? defaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: animate ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppName,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      AppTagline,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: animate ? 70 : 0,
              right: animate ? 60 : 0,
              left: animate ? 60 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: animate ? 1 : 0,
                child: const Image(
                  image: AssetImage("assets/images/splash_images/my-logo.jpg"),
                  width: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    setState(() => animate = true);

    await Future.delayed(
      const Duration(milliseconds: 5000),
    );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        ),
      );

  }
}
