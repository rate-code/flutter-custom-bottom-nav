import 'package:custom_bottom_nav/bottom_nav.dart';
import 'package:custom_bottom_nav/constants.dart';
import 'package:custom_bottom_nav/history_screen.dart';
import 'package:custom_bottom_nav/home_screen.dart';
import 'package:custom_bottom_nav/profile_screen.dart';
import 'package:custom_bottom_nav/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedBottomIndex = 0;

  final pages = [
    HomeScreen(),
    WishlistScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Column(
          children: [
            Expanded(
              child: pages[selectedBottomIndex],
            ),
            // Bottom Nav Bar
            bottomNavigationBar(
              selectedIndex: selectedBottomIndex,
              items: bottomNavItems,
              onTap: (index) {
                setState(() {
                  selectedBottomIndex = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
