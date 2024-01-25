import 'package:e_commerce/configeration/routes/routes.dart';
import 'package:e_commerce/core/api/api_manager.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/features/login/presentation/pages/login.dart';
import 'package:e_commerce/features/signup/presentation/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(ApiManager()),
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.screenStatus == ScreenStatus.loading) {
            Center(child: CircularProgressIndicator());
          }
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.BackGround,
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 97.w, right: 96.r, top: 91.h),
                    child: Image.asset(

                      AppImages.routeImageForSignIn,
                      width: 237.w,
                      height: 71.h,
                      fit: BoxFit.cover,

                    ),
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  Text(
                    AppStrings.Fullname,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: AppStrings.entername,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    AppStrings.Mobile,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: AppStrings.enteryouremail,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    AppStrings.Email,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: AppStrings.enteryouremail,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    AppStrings.Password,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      hintText: AppStrings.enterpassword,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 56.h,
                  ),
                  ElevatedButton(
                    
                    




                      style:ElevatedButton.styleFrom(
                        minimumSize: Size(400.w, 64.h),



                        shape:    RoundedRectangleBorder(


                          borderRadius: BorderRadius.circular(14),


                           ),
                          backgroundColor:Colors.white
                      ),

                 


                      onPressed: () {
                        Navigator.pushNamed(context,AppRoutes.login );

                      },
                      child: Text(
                        AppStrings.SignUp,
                        style: TextStyle(color: AppColors.SignUp),
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
