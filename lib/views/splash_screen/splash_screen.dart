import 'dart:async';

import 'package:flutter/material.dart';
import '/../utils/color_scheme.dart';
import '../splash_screen/components/splash_body.dart';
import '../authentication_screen/components/authentication_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const AuthenticationScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kLightPurple,
      body: SplashBody(),
    );
  }
}
