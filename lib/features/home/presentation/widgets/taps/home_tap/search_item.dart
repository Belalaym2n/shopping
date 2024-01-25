import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget searchItem() =>

  Row(
    children: [
      Expanded(
        child: SearchBar(
            leading: Icon(Icons.search, color: Colors.black54),
            hintText: AppStrings.SearchHint,
            hintStyle: MaterialStatePropertyAll(
                TextStyle(color: Colors.black54)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side:
                BorderSide(color: AppColors.primary, width: 3)))),
      ),
      SizedBox(
        width: 24.h,
      ),
      Icon(
        Icons.shopping_cart_outlined,
        color: AppColors.primary,
        size: 35,
      )
    ],
  );
