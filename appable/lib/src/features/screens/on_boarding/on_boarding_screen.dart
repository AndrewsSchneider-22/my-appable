import 'package:appable/src/constraints/colors.dart';
import 'package:appable/src/constraints/image_string.dart';
//import 'package:appable/src/constraints/sizes.dart';
import 'package:appable/src/constraints/text_strings.dart';
import 'package:appable/src/features/screens/on_boarding/on_boarding_page_widget.dart';
//import 'package:appable/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:appable/src/features/screens/welcome/welcome_screen.dart';
import 'package:appable/src/features/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();
  int currentPage = 0;

  bool animate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
            image: onBoardingImage3,
            title: onBoardingTitle1,
            bgColor: onBoardingPage1Color,
            counterText: onBoardingCounter1,
            subTitle: onBoardingSubTitle1,
            height: size.height,
            width: size.width),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
            image: onBoardingImage2,
            title: onBoardingTitle2,
            bgColor: onBoardingPage2Color,
            counterText: onBoardingCounter2,
            subTitle: onBoardingSubTitle2,
            height: size.height,
            width: size.width),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
            image: onBoardingImage1,
            title: onBoardingTitle3,
            bgColor: onBoardingPage3Color,
            counterText: onBoardingCounter3,
            subTitle: onBoardingSubTitle3,
            height: size.height,
            width: size.width),
      )
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            onPageChangeCallback: onPageChangeCallback,
            liquidController: controller,
            pages: pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 40.0,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(5),
              ),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  color: Color(0xff272727),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios, color: Colors.amber),
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 20,
            child: TextButton(
              //onPressed: () => controller.jumpToPage(page: 2),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
    
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              count: pages.length,
              activeIndex: controller.currentPage,
              effect:const JumpingDotEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

   onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }

  //  Future startAnimation() async {
  //   await Future.delayed(
  //     Duration(microseconds: 500),
  //   );
  //   setState(
  //     () {
  //       animate = true;
  //     },
  //   );

  //   await Future.delayed(
  //    const Duration(milliseconds: 5000),
  //   );
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => WelcomeScreen(),
  //     ),
  //   );
  // }
}
