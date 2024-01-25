import 'package:e_commerce/configeration/routes/routes.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.BackGround,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding:  EdgeInsets.only(
                  left: 97.w, right: 96.r, top: 91.h
              ),
              child: Image.asset(AppImages.routeImageForSignIn,
              height: 71,
                  width: 237,
                fit: BoxFit.cover,




              ),
            ),
            SizedBox(
              height: 91.h,
            ),
            Text(AppStrings.WelcomeBack
              , style: Fonts.large,),
            SizedBox(
              height: 8.h,
            ),

            Text(AppStrings.PleaseSignIn, style: Fonts.small,),
            SizedBox(
              height:40.h,
            ),

            Text(AppStrings.Username, style: Fonts.medium,),
            SizedBox(

              height: 24.h,
            ),
            TextFormField(


              decoration:InputDecoration(
                filled: true,
                fillColor: Colors.white,


                hintText: AppStrings.entername,
                enabledBorder: OutlineInputBorder(


                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.white

                  ),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Colors.white

                  ),

                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),

            Text(AppStrings.Password, style:Fonts.medium,),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration:InputDecoration(
                suffixIcon: Icon(

                    Icons.remove_red_eye_sharp
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: AppStrings.enterpassword,

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Colors.white

                  ),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Colors.white

                  ),

                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(AppStrings.forgotPass, style: Fonts.medium,
            textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 56.h,
            ),
            ElevatedButton(

                style: ElevatedButton.styleFrom(
                  minimumSize: Size(398, 64),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(
                      color: Colors.white
                    ),


                  )
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (route) => false);

            }, child: Text(AppStrings.Login,style: TextStyle(
              color: AppColors.SignUp,

            fontWeight: FontWeight.w600,
            fontSize: 20

            ),)),
            SizedBox(
              height: 32.h,

            ),
            Container(
              margin: EdgeInsets.only(
                left: 45,

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.DontHaveAcc,style: Fonts.medium),
                  Text(AppStrings.CreateAccount,style: Fonts.medium,)
                ],
              ),
            )





          ],
        ),
      ),
    );
  }
}
