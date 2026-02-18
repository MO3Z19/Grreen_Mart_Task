import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import 'home_screen.dart';
import '../explore/explore_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const Center(child: Text("Cart")),
    const Center(child: Text("Favourite")),
    const Center(child: Text("Account")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.black,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              _buildNavItem('assets/images/icons/shop.png', "Shop", 0),
              _buildNavItem('assets/images/icons/explore.png', "Explore", 1),
              _buildNavItem('assets/images/icons/cart.png', "Cart", 2),
              _buildNavItem('assets/images/icons/fav.png', "Favourite", 3),
              _buildNavItem('assets/images/icons/account.png', "Account", 4),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
    String iconPath,
    String label,
    int index,
  ) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Image.asset(
          iconPath,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
          color: currentIndex == index ? AppColors.primaryColor : Colors.black,
        ),
      ),
      label: label,
    );
  }
}
