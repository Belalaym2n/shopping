import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appliance() => Container(
      height: 90,
      child: GridView.builder(
        itemCount: 3,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 125.h,
              width: 100.w,
              decoration: BoxDecoration(
                image:DecorationImage(
                    image: NetworkImage("https://th.bing.com/th/id/OIP.WjYE0r1XqQDAdQPupbR6cgHaHa?rs=1&pid=ImgDetMain"),fit: BoxFit.fill)
              ),
            )
          ],
        ),
      ),
    );
