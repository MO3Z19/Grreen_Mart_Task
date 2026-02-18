import 'package:flutter/material.dart';
import 'core/constants/app_colors.dart';
// Importing all screens for easy access
//import 'features/auth/login_screen.dart';
//import 'features/auth/signup_screen.dart';
//import 'features/auth/number_screen.dart';
//import 'features/auth/verification_screen.dart';
import 'features/home/dashboard_screen.dart';
//import 'features/splash/splash_screen.dart';
//import 'features/onboarding/onboarding_screen.dart';
//import 'features/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GreenMart',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      //home: const SplashScreen(),
      //home: const OnboardingScreen(),
      //home: const LoginScreen(),
      //home: const SignupScreen(),
      //home: const NumberScreen(),
      //home: const VerificationScreen(),
      home: const DashboardScreen(),
      //home: const HomeScreen(),
    );
  }
}
