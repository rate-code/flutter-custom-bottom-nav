import 'package:custom_bottom_nav/bottom_nav.dart';
import 'package:flutter/material.dart';

final List<BottomMenuItem> bottomNavItems = [
  BottomMenuItem(
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
    label: "Home",
  ),
  BottomMenuItem(
    icon: Icons.access_time_outlined,
    selectedIcon: Icons.access_time_filled,
    label: "History",
  ),
  BottomMenuItem(
    icon: Icons.favorite_border,
    selectedIcon: Icons.favorite,
    label: "Favorites",
  ),
  BottomMenuItem(
    icon: Icons.person_outline,
    selectedIcon: Icons.person,
    label: "Profile",
  ),
];
