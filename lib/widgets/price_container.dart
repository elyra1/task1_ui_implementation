import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation/utils/app_colors.dart';
import 'package:task1_ui_implementation/utils/app_text_styles.dart';

class PriceContainer extends StatelessWidget {
  final String title;
  const PriceContainer({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: 5.w, vertical: 4.h),
        color: AppColors.yellow,
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: title,
              style: AppTextStyles.appBarTextStyle.copyWith(
                fontSize: 16.sp,
              )),
          TextSpan(
            text: " ₽",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ])));
  }
}