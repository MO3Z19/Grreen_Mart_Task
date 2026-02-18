import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import 'category_items_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        "name": "Fresh Fruits\n& Vegetable",
        "image": "assets/images/categories/fruit.png",
        "color": const Color(0xFF53B175),
      },
      {
        "name": "Cooking Oil\n& Ghee",
        "image": "assets/images/categories/oil.png",
        "color": const Color(0xFFF8A44C),
      },
      {
        "name": "Meat & Fish",
        "image": "assets/images/categories/meat.png",
        "color": const Color(0xFFF7A593),
      },
      {
        "name": "Bakery & Snacks",
        "image": "assets/images/categories/bakery.png",
        "color": const Color(0xFFD3B0E0),
      },
      {
        "name": "Dairy & Eggs",
        "image": "assets/images/categories/dairy.png",
        "color": const Color(0xFFFDE598),
      },
      {
        "name": "Beverages",
        "image": "assets/images/categories/beverages.png",
        "color": const Color(0xFFB7DFF5),
      },
      {
        "name": "Snacks",
        "image": "assets/images/categories/bakery.png",
        "color": const Color(0xFF836AF6),
      },
      {
        "name": "Care",
        "image": "assets/images/categories/oil.png",
        "color": const Color(0xFFD73B77),
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Find Products",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.darkText,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
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
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.85,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return _CategoryCard(item: categories[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const _CategoryCard({required this.item});

  @override
  Widget build(BuildContext context) {
    final Color color = item['color'] as Color;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                CategoryItemsScreen(categoryTitle: item['name'] as String),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: color.withOpacity(0.7), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              item['image'] as String,
              width: 100,
              height: 80,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            Text(
              item['name'] as String,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.darkText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
