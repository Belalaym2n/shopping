import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/routes/routes.dart';
import 'core/cache/shared_pref.dart';
import 'core/utils/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.init();
  Bloc.observer = MyBlocObserver();
  String start;
  String? token = await CacheData.getData("token");
  if (token == null) {
    start = "/";
  } else {
    start = "home";
  }
  runApp(MyApp(start));
}

class MyApp extends StatelessWidget {
  String start;

  MyApp(this.start, {super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: start,
        onGenerateRoute: (settings) => Routes.onGenerate(settings),
      ),
    );
  }
}
