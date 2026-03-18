import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/cart_item_widget.dart';
import '../widgets/checkout_button.dart';
import '../widgets/checkout_bottom_sheet.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cartItems = [
      {
        "name": "Bell Pepper Red",
        "desc": "1kg, Price",
        "price": "4.99",
        "qty": 1,
        "image": "assets/images/products/banana.png",
      },
      {
        "name": "Egg Chicken Red",
        "desc": "4pcs, Price",
        "price": "1.99",
        "qty": 1,
        "image": "assets/images/products/banana.png",
      },
      {
        "name": "Organic Bananas",
        "desc": "12kg, Price",
        "price": "3.00",
        "qty": 1,
        "image": "assets/images/products/banana.png",
      },
      {
        "name": "Ginger",
        "desc": "250gm, Price",
        "price": "2.99",
        "qty": 1,
        "image": "assets/images/products/banana.png",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(
            color: AppColors.darkText,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: const Color(0xFFE2E2E2), height: 1.0),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemCount: cartItems.length,
              separatorBuilder: (context, index) =>
                  const Divider(thickness: 1, color: Color(0xFFE2E2E2)),
              itemBuilder: (context, index) {
                return CartItemWidget(item: cartItems[index]);
              },
            ),
          ),
          CheckoutButton(
            totalPrice: "\$13.97",
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return const CheckoutBottomSheet();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}