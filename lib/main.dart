import 'package:bookly/Features/Splash/Presentation/views/SplashView.dart';
import 'package:bookly/constante.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.(scaffoldBackgroundColor: KPrimaryColor),
      home: const SplashView(),
    );
  }
}
