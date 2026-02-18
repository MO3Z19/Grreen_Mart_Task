import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/custom_button.dart';


class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            // Title
            const Text(
              "Enter verification code", 
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)
            ),
            
            const SizedBox(height: 10),

            // Subtitle
            const Text(
              "We have sent SMS to: 01xxxxxxxxx",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),

            const SizedBox(height: 50),

            // OTP Inputs (5 Boxes)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
                _buildOTPBox(),
                _buildOTPBox(),
                _buildOTPBox(),
                _buildOTPBox(),
                _buildOTPBox(),
              ],
            ),

            const SizedBox(height: 40),

            // Resend Code
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Resend Code", 
                  style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Confirm Button
            Center(
              child: CustomButton(
                text: "Confirm", // Or "Next" based on design
                onTap: () {
                   // Verify Logic
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each OTP box
  Widget _buildOTPBox() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        textAlign: TextAlign.center, 
        keyboardType: TextInputType.number,
        maxLength: 1, // Only 1 digit
        decoration: InputDecoration(
          border: InputBorder.none, 
          counterText: "", 
        ),
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}