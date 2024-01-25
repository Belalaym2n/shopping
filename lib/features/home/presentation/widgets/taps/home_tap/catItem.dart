
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget catItem() => Container(
  height: 260,
//  height: 288.h,

  padding: EdgeInsets.all(12),
  child: GridView.builder(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      scrollDirection: Axis.horizontal,
      itemCount:8,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://stylemann.com/wp-content/uploads/2016/10/Formal-Attire-5.jpg"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
               "model",
              style: TextStyle(
                color: Color(0xFF06004E),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        );
      }),
);
