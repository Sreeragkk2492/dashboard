import 'package:dashboard/core/constants/colors.dart';
import 'package:dashboard/core/constants/dimens.dart';
import 'package:dashboard/core/widgets/desktop_dashboard_screen.dart';
import 'package:dashboard/core/widgets/desktop_profile.dart';
import 'package:dashboard/core/widgets/desktop_settings.dart';
import 'package:dashboard/core/widgets/desktop_sidebar.dart';
import 'package:dashboard/core/widgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: AppBar(
          elevation: 4,
          titleSpacing: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(color: AppColors.bgGreyColor), 
          ),
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Padding(
            padding:  EdgeInsets.only(left: 20.w), 
            child: Text('Percapita',
                style: GoogleFonts.pacifico(
                    fontSize: kDefaultPadding * 2 - kTextPadding.sp,
                    color: AppColors.buttonSuccessColor)),
          ),
          actions: [
            buildSizedboxW(kDefaultPadding),
            Visibility(
              child: Row(
                children: [
                  buildSizedboxW(kDefaultPadding),
                  buildSizedboxW(kDefaultPadding),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                  ),
                  buildSizedboxW(kDefaultPadding),
                ],
              ),
            ),
            buildSizedboxW(kDefaultPadding),
          ],
        ),
      ),
      body: Row(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 20.h), 
            child: DesktopSideBar(
              selectedIndex: _selectedIndex,
              onItemSelected: _onItemTapped,
            ),
          ),
          Expanded(
              child: PageView(
            controller: _pageController,
            children: [
              DesktopDashboardScreen(),
              DesktopSettings(),
              DesktopProfile()
            ],
          ))
        ],
      ),
    );
  }
}
