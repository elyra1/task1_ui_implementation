import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task1_ui_implementation/utils/app_colors.dart';

abstract class AppIcons {
  static SvgPicture share = SvgPicture.asset(
    "assets/icons/share.svg",
    width: 16.sp,
    height: 16.sp,
  );

  static Icon threeDotes = Icon(
    FontAwesomeIcons.ellipsis,
    color: AppColors.sky,
    size: 16.sp,
  );

  static Icon place = Icon(
          Icons.place_outlined,
          color: AppColors.sky,
          size: 16.sp,
        );

  static SvgPicture borderOuter = SvgPicture.asset(
    "assets/icons/border-outer.svg",
    width: 16.sp,
    height: 16.sp,
  );

  static SvgPicture borderTop = SvgPicture.asset(
    "assets/icons/border-top.svg",
    width: 16.sp,
    height: 16.sp,
  );

  static SvgPicture chevronDown = SvgPicture.asset(
    "assets/icons/chevron-down.svg",
    width: 16.sp,
    height: 16.sp,
  );

  static SvgPicture tools = SvgPicture.asset(
    "assets/icons/tools.svg",
    width: 16.sp,
    height: 16.sp,
  );
}
