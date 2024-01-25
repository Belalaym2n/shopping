

import 'dart:async';

import 'package:e_commerce/configeration/routes/routes.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(Duration(
       seconds: 3
    ), () {
       Navigator.pushNamedAndRemoveUntil(context, AppRoutes.signUp, (route) => false
       );
    });
    return Stack(


      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.routeImageForSignIn),),
            color: AppColors.primary
          ),
        )

      ],
    );
  }
}

