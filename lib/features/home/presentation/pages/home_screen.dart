import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/fonts.dart';
import 'package:e_commerce/features/home/presentation/widgets/taps/home_tap/appliance.dart';
import 'package:e_commerce/features/home/presentation/widgets/taps/home_tap/carsoulSlider.dart';
import 'package:e_commerce/features/home/presentation/widgets/taps/home_tap/catItem.dart';
import 'package:e_commerce/features/home/presentation/widgets/taps/home_tap/search_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 90.w,
        elevation: 0,
        backgroundColor:Colors.transparent,
        leading: Image.asset(
          AppImages.routeImage,
        ),
      ),
      bottomNavigationBar:
      BottomNavigationBar(



         currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.BackGround,
          onTap: (value) {
           index=value;
           setState(() {

           });

          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,

          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,)

        , label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: "",),
        BottomNavigationBarItem(icon: Icon(Icons.person,),label: ""),

        BottomNavigationBarItem(icon: Icon(Icons.apps,), label: ""),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            searchItem(),
              carsoulSlider(),
              Text(
                AppStrings.Categories,
                style: Fonts.medium.copyWith(
                  color: AppColors.primary,

                ),
                textAlign: TextAlign.start,
              ),
              catItem(),

              Text(AppStrings.HomeAppliance,style: Fonts.medium.copyWith(
                color: AppColors.primary
              ),),
              SizedBox(
                height: 10.h,
              ),
              appliance()

            ],
          ),
        ),
      ),
    );
  }
}
