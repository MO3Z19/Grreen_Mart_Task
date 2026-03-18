import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor.withOpacity(0.1),
                      ),
                      child: const Icon(Icons.person, size: 40, color: AppColors.primaryColor),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Moaz Ashraf",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.darkText),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.edit, color: AppColors.primaryColor, size: 18),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "mo3z19@gmail.com",
                          style: TextStyle(fontSize: 16, color: AppColors.greyText),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Divider(color: Color(0xFFE2E2E2), thickness: 1),
              _buildAccountItem(Icons.shopping_bag_outlined, "Orders"),
              _buildAccountItem(Icons.badge_outlined, "My Details"),
              _buildAccountItem(Icons.location_on_outlined, "Delivery Address"),
              _buildAccountItem(Icons.credit_card_outlined, "Payment Methods"),
              _buildAccountItem(Icons.local_offer_outlined, "Promo Cord"),
              _buildAccountItem(Icons.notifications_none_outlined, "Notifications"),
              _buildAccountItem(Icons.help_outline, "Help"),
              _buildAccountItem(Icons.info_outline, "About"),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2F3F2),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.logout, color: AppColors.primaryColor),
                        SizedBox(width: 15),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountItem(IconData icon, String title) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          leading: Icon(icon, color: AppColors.darkText, size: 24),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.darkText,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 18, color: AppColors.darkText),
          onTap: () {},
        ),
        const Divider(color: Color(0xFFE2E2E2), thickness: 1, height: 1),
      ],
    );
  }
}