import 'package:flutter/material.dart';
import '../../core/widgets/custom_button.dart';
import 'verification_screen.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

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
            const Text("Enter your mobile number", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              "We need to verify you. We will send you a one time verification code.",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 40),
            const Text("Mobile Number", style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "01xxxxxxxxx",
                filled: true,
                fillColor: Colors.grey[100],
                prefixIcon: const Icon(Icons.phone_iphone, color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 40),
            Align(
               alignment: Alignment.centerRight,
               child: CustomButton(
                text: "Next",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}