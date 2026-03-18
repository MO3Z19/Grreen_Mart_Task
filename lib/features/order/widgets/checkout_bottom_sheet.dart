import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../order/page/order_accepted_screen.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkText,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: AppColors.darkText),
              ),
            ],
          ),
          const Divider(color: Color(0xFFE2E2E2), thickness: 1),
          _buildRow(
            "Delivery",
            "Select Method",
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const Divider(color: Color(0xFFE2E2E2), thickness: 1),
          _buildRow(
            "Payment",
            "",
            trailing: const Icon(Icons.credit_card, color: Colors.blue),
          ),
          const Divider(color: Color(0xFFE2E2E2), thickness: 1),
          _buildRow(
            "Promo Code",
            "Pick discount",
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const Divider(color: Color(0xFFE2E2E2), thickness: 1),
          _buildRow(
            "Total Cost",
            "\$13.97",
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const Divider(color: Color(0xFFE2E2E2), thickness: 1),
          const SizedBox(height: 15),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: AppColors.greyText, fontSize: 14),
              children: [
                TextSpan(text: "By placing an order you agree to our\n"),
                TextSpan(
                  text: "Terms",
                  style: TextStyle(
                    color: AppColors.darkText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: " And "),
                TextSpan(
                  text: "Conditions",
                  style: TextStyle(
                    color: AppColors.darkText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 65,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderAcceptedScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              child: const Text(
                "Place Order",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String title, String value, {Widget? trailing}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.greyText,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.darkText,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 15),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
