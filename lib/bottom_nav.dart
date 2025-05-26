import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomMenuItem {
  final IconData icon;
  final IconData selectedIcon;
  final String label;

  BottomMenuItem({
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });
}

Widget bottomNavigationBar({
  required int selectedIndex,
  required List<BottomMenuItem> items,
  required Function(int) onTap,
}) {
  return Container(
    width: 100.w,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5.w),
        topRight: Radius.circular(5.w),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            items.length,
            (index) {
              final item = items[index];
              final isSelected = index == selectedIndex;

              return Expanded(
                child: GestureDetector(
                  onTap: () => onTap(index),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        isSelected ? item.selectedIcon : item.icon,
                        color:
                            isSelected ? Color(0xFFC67C4E) : Color(0xFFA2A2A2),
                        size: 20.5.sp,
                      ),
                      SizedBox(height: 4),
                      if (isSelected)
                        Container(
                          width: 10,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Color(0xFFC67C4E),
                            borderRadius: BorderRadius.circular(2)
                          ),
                        )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 30),
      ],
    ),
  );
}

// We can use the State mgmt instead of the setstate..
// Thanks for watching
// Like, Share and Subscribe..
// Comment for Code
// :>>>>>>>>>>
