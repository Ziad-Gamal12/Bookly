// ignore: file_names
// ignore_for_file: non_constant_identifier_names

import 'package:bookly/Features/Splash/Presentation/views/widgets/TextAnimation.dart';
import 'package:bookly/core/utils/App_Router.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/Assests.dart';
import 'package:go_router/go_router.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> slidinganimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NavigationToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeTransition(
            opacity: slidinganimation, child: Image.asset(AssetsData.logo)),
        TextAinmation(slidinganimation: slidinganimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(microseconds: 2500))
      ..repeat(period: const Duration(seconds: 2));
    slidinganimation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);
  }

  void NavigationToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(app_router.KhomeView);
    });
  }
}
