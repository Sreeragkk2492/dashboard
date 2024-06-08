import 'package:dashboard/core/constants/colors.dart';
import 'package:dashboard/core/constants/dimens.dart';
import 'package:dashboard/core/widgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: AppBar(
          elevation: 4,
          titleSpacing: 0,
          flexibleSpace: Container(
            decoration:  BoxDecoration(color:AppColors.buttontextColor ),  
          ),
          automaticallyImplyLeading: true,
          centerTitle: false,
          title: Text('Percapita',
              style: GoogleFonts.pacifico(
                  fontSize: kDefaultPadding * 2 - kTextPadding,
                  color: AppColors.buttonSuccessColor)),
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
      );
  }
}