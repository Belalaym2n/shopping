 import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget carsoulSlider(){
  return
  CarouselSlider(
    options: CarouselOptions(
        height: 230.0,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
        animateToClosest: true),
    items: [
      Image.asset(
        AppImages.photoSlide1,
      ),
      Image.asset(
        AppImages.photoSlide3,
      ),
      Image.asset(
        AppImages.photoSlide2,
      ),
    ].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              height: 16.h,
              // width: 600,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: i);
        },
      );
    }).toList(),
  );
}