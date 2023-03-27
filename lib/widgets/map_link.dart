import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation/utils/app_icons.dart';
import 'package:task1_ui_implementation/utils/app_text_styles.dart';

class MapLink extends StatelessWidget {
  final String address;
  const MapLink({
    super.key,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppIcons.place,
        SizedBox(
          width: 5.75.w,
        ),
        Text(address, style: AppTextStyles.textButtonStyle),
      ],
    );
  }
}