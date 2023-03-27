import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation/utils/app_colors.dart';
import 'package:task1_ui_implementation/utils/app_icons.dart';
import 'package:task1_ui_implementation/utils/app_text_styles.dart';
import 'package:task1_ui_implementation/widgets/image_carousel.dart';
import 'package:task1_ui_implementation/widgets/map_link.dart';
import 'package:task1_ui_implementation/widgets/object_characteristic.dart';
import 'package:task1_ui_implementation/widgets/price_container.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final imageList = [
    "assets/images/room.jpg",
    "assets/images/room.jpg",
    "assets/images/room.jpg",
    "assets/images/room.jpg",
    "assets/images/room.jpg",
  ];
  
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 941),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.white,
              centerTitle: true,
              actions: [
                GestureDetector(onTap: () {}, child: AppIcons.share),
                SizedBox(
                  width: 16.w,
                ),
                GestureDetector(onTap: () {}, child: AppIcons.threeDotes),
                SizedBox(
                  width: 16.w,
                )
              ],
              title: Text(
                "Предложение",
                style: AppTextStyles.appBarTextStyle,
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(
                  left: 15.w, right: 15.w, top: 19.h, bottom: 27.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageCarousel(
                    imageList: imageList,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "Квартира-студия, 40м, 16/23 эт.",
                    style: AppTextStyles.headlineStyle,
                  ),
                  SizedBox(height: 5.h),
                  const MapLink(
                      address: "Центр (Кировский р-н.), Очаковская, 39"),
                  SizedBox(
                    height: 13.h,
                  ),
                  const PriceContainer(
                    title: "2,3 млн",
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Описание",
                    style: AppTextStyles.boldHeadlineStyle,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают 6 детских садов, 1 школа. Есть собственная управляющая компания.',
                    style: AppTextStyles.descriptionStyle,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      AppIcons.chevronDown,
                      SizedBox(
                        width: 5.5.w,
                      ),
                      Text(
                        "Подробнее",
                        style: AppTextStyles.textButtonStyle
                            .copyWith(fontSize: 12.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  Text(
                    "Характеристики",
                    style: AppTextStyles.boldHeadlineStyle,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Text(
                    "Об объекте",
                    style: AppTextStyles.headlineStyle.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  ObjectCharacteristic(
                    icon: AppIcons.borderOuter,
                    title: "Планировка",
                    value: "Смежная",
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Container(
                    height: 1.h,
                    color: AppColors.grey,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  ObjectCharacteristic(
                    icon: AppIcons.borderTop,
                    title: "Высота потолков",
                    value: "От 2,5 м",
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Container(
                    height: 1.h,
                    color: AppColors.grey,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  ObjectCharacteristic(
                    icon: AppIcons.tools,
                    title: "Ремонт",
                    value: "Без ремонта",
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Container(
                    height: 1.h,
                    color: AppColors.grey,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        AppIcons.chevronDown,
                        SizedBox(
                          width: 5.5.w,
                        ),
                        Text(
                          "Подробнее",
                          style: AppTextStyles.textButtonStyle
                              .copyWith(fontSize: 12.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  GestureDetector(
                    onTap: () => launchUrl(Uri.parse("https://avito.ru")),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/avito.png",
                          width: 21.w,
                          height: 22.h,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "Смотреть на Avito",
                          style: AppTextStyles.headlineStyle
                              .copyWith(fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
