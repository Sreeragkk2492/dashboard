import 'package:dashboard/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HoverableListtile extends StatefulWidget {
  final Widget leading;
  final Widget title;
  final bool isSelected;
  final Function()? onTap;

  HoverableListtile({
    required this.leading,
    required this.title,
    this.isSelected=false,
    this.onTap,
  });

  @override
  State<HoverableListtile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HoverableListtile> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
      Color getColor() {
      if (widget.isSelected) {
        return AppColors.buttonSuccessColor; // Selected color
      } else if (_isHovered) {
        return AppColors.darkBackgroundColor; // Hover color 
      } else {
        return AppColors.blackColor; // Default color
      }
    }
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        height: 70.h ,
        color:  widget.isSelected
            ? AppColors.bgGreyColor // Selected color
            : _isHovered
                ? Colors.blue.withOpacity(0.1) // Hover color
                : Colors.transparent,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 10.w),
          horizontalTitleGap: 20,
          minVerticalPadding: 10 ,
          leading:  IconTheme(
             child: widget.leading,
          data: IconThemeData(color: getColor()),
          ),
         
          title: DefaultTextStyle(
          style: TextStyle(color: getColor()),
          child: widget.title,
        ),
          onTap: widget.onTap,
        ),
      ),
    );
  }
}
