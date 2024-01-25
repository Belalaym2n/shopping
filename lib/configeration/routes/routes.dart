import 'package:e_commerce/features/home/presentation/pages/home_screen.dart';
import 'package:e_commerce/features/login/presentation/pages/login.dart';
import 'package:e_commerce/features/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/signup/presentation/pages/signup.dart';

class AppRoutes {
   static const String login = "login";
  static const String signUp = "Sign";
  static const String home = "home";
  static const String splash = "/";
}

class Routes {
  static onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case AppRoutes.signUp:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen(),);
      default:
        return MaterialPageRoute(
          builder: (context) {
            return
            Scaffold(
              appBar: AppBar(
                title: Text("unDefine"),
              ),
              body:undefinWidget() ,
            );
          },
        );
    }
  }

  static undefinWidget(){
    Container(
      child: Center(
        child: Text('unDefine'),
      ),
    );
  }
}
