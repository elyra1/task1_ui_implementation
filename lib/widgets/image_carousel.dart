import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation/utils/app_colors.dart';
import 'package:task1_ui_implementation/utils/app_text_styles.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    super.key,
    required this.imageList,
  });

  final List<String> imageList;

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235.h,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: 5,
            pageSnapping: true,
            onPageChanged: (value) => setState(() {
              currentPage = value + 1;
            }),
            itemBuilder: (context, index) {
              return SizedBox(
                child: Image.asset(
                  widget.imageList[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: AppColors.black60,
              ),
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
              child: Text(
                "$currentPage/5",
                style: AppTextStyles.headlineStyle.copyWith(
                    fontSize: 9.sp, letterSpacing: 1.5.sp, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
