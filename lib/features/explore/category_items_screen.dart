import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/product_card.dart';
// 👇 ده السطر اللي بيستدعي صفحة التفاصيل
import '../../features/product_details/product_details_screen.dart';

class CategoryItemsScreen extends StatelessWidget {
  final String categoryTitle;

  const CategoryItemsScreen({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "name": "Naturel Red Apple",
        "desc": "1kg, Price",
        "price": "4.99",
        "img": "assets/images/products/apple.png",
        "isReal": true, // علامة عشان نعرف إن دي التفاحة الحقيقية
      },
      // باقي المنتجات وهمية
      {
        "name": "Org Banana",
        "desc": "----",
        "price": "----",
        "img": "assets/images/products/fruit.png",
        "isReal": false,
      },
      {
        "name": "Bell Pepper",
        "desc": "----",
        "price": "----",
        "img": "assets/images/products/fruit.png",
        "isReal": false,
      },
      {
        "name": "Ginger",
        "desc": "----",
        "price": "----",
        "img": "assets/images/products/fruit.png",
        "isReal": false,
      },
      {
        "name": "Meat",
        "desc": "----",
        "price": "----",
        "img": "assets/images/products/fruit.png",
        "isReal": false,
      },
      {
        "name": "Beef",
        "desc": "----",
        "price": "----",
        "img": "assets/images/products/fruit.png",
        "isReal": false,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          categoryTitle,
          style: const TextStyle(
            color: AppColors.darkText,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];

          return GestureDetector(
            onTap: () {
              if (item['isReal'] == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductDetailsScreen(),
                  ),
                );
              }
            },
            child: ProductCard(
              name: item['name'] as String,
              description: item['desc'] as String,
              price: item['price'] as String,
              imagePath: item['img'] as String,
              onAddTap: () {},
            ),
          );
        },
      ),
    );
  }
}
