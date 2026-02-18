import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // 1️⃣ Logo Section
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/logos/carrot_green.png',
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/images/logos/green_mart.png',
                      height: 30,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 2️⃣ Search Bar
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Icon(Icons.search, color: Colors.black54),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Search Store",
                      style: TextStyle(
                        color: AppColors.greyText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // 4️⃣ Section: Exclusive Offer (Header)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Exclusive Offer",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkText,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // 5️⃣ Section: Exclusive Offer
              SizedBox(
                height: 250, // لازم نحدد طول عشان الكارت يظهر
                child: ListView(
                  scrollDirection: Axis.horizontal, 
                  children: [
                    ProductCard(
                      name: "Organic Bananas",
                      description: "7pcs, Priceg",
                      price: "4.99",
                      imagePath: "assets/images/products/banana.png",
                      onAddTap: () {},
                    ),
                    const SizedBox(width: 15),
                    ProductCard(
                      name: "Red Apple",
                      description: "1kg, Priceg",
                      price: "4.99",
                      imagePath: "assets/images/products/appel.png",
                      onAddTap: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // 6️⃣ Section: Best Selling (Header)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkText,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // 7️⃣ Section: Best Selling (Products List)
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      name: "Bell Pepper Red",
                      description: "1kg, Priceg",
                      price: "4.99",
                      imagePath: "assets/images/products/bell paper.png",
                      onAddTap: () {},
                    ),
                    const SizedBox(width: 15),
                    ProductCard(
                      name: "Ginger",
                      description: "250gm, Priceg",
                      price: "4.99",
                      imagePath: "assets/images/products/ginger.png",
                      onAddTap: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
