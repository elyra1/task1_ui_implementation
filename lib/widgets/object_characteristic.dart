import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_ui_implementation/utils/app_text_styles.dart';

class ObjectCharacteristic extends StatelessWidget {
  final SvgPicture icon;
  final String title;
  final String value;
  const ObjectCharacteristic({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon,
            SizedBox(
              width: 9.w,
            ),
            Text(title,
                style: AppTextStyles.headlineStyle.copyWith(fontSize: 15.sp)),
          ],
        ),
        Text(value,
            style: AppTextStyles.headlineStyle.copyWith(fontSize: 15.sp)),
      ],
    );
  }
}