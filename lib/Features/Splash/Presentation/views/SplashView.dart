// ignore_for_file: file_names

import 'package:bookly/Features/Splash/Presentation/views/widgets/SplashViewbody.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewbody(),
    );
  }
}
