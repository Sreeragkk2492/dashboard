import 'package:dashboard/core/constants/colors.dart';
import 'package:dashboard/screens/dashboard/widget/hoverable_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesktopSideBar extends StatelessWidget {
  DesktopSideBar(
      {super.key, required this.selectedIndex, required this.onItemSelected});
  final int selectedIndex;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      decoration: BoxDecoration(gradient: AppColors.grayWhite),
      child: ListView(
        children: [
          HoverableListtile(
              isSelected: selectedIndex == 0,
              onTap: () {
                onItemSelected(0);
              },
              leading: Icon(
                Icons.dashboard,
                color: AppColors.buttonSuccessColor,
              ),
              title: Text(
                'Dashboard',
                style: TextStyle(fontSize: 20),
              )),
          HoverableListtile(
              onTap: () {
                onItemSelected(1);
              },
              isSelected: selectedIndex == 1,
              leading: Icon(
                Icons.settings,
                color: AppColors.buttonSuccessColor,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 20),
              )),
          HoverableListtile(
              onTap: () {
                onItemSelected(2);
              },
              isSelected: selectedIndex == 2,
              leading: Icon(
                Icons.person,
                color: AppColors.buttonSuccessColor,
              ),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
