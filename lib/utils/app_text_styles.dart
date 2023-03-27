import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation/utils/app_colors.dart';

abstract class AppTextStyles{
  static TextStyle appBarTextStyle = TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: "OpenSans",
                  );
  static TextStyle headlineStyle = TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: "OpenSans",
                      );
  static TextStyle textButtonStyle = TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.sky,
            fontFamily: "OpenSans",
          );                      

  static TextStyle boldHeadlineStyle = headlineStyle.copyWith(fontWeight: FontWeight.w700,);  
  static TextStyle descriptionStyle = headlineStyle.copyWith(fontSize: 12.sp);     
                
}