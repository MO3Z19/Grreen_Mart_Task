import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/custom_button.dart';
import 'login_screen.dart';
import 'number_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Center(child: Image.asset('assets/images/carrot.png', width: 50)),
            const SizedBox(height: 60),
            const Text("Sign Up", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const Text("Enter your credentials to continue", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 40),
            const Text("Username", style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Your Username",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Email", style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "example@gmail.com",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Password", style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "**************",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "By continuing you agree to our Terms of Service and Privacy Policy.",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(height: 30),
            Center(
              child: CustomButton(
                text: "Sign Up",
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const NumberScreen()));
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? ", style: TextStyle(fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: const Text("Login", style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}