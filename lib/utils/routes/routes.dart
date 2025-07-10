import 'package:cashbook/utils/routes/routes_names.dart';
import 'package:cashbook/view/bottom_navigator.dart';
import 'package:cashbook/view/email_screen.dart';
import 'package:cashbook/view/login_screen.dart';
import 'package:cashbook/view/onboarding.dart';
import 'package:cashbook/view/other_way_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic>generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesNames.login:
        return MaterialPageRoute(builder: (BuildContext context)=>LoginScreen());
      case RoutesNames.onboard:
        return MaterialPageRoute(builder: (BuildContext context)=>OnBoarding());
      case RoutesNames.emailsc:
        return MaterialPageRoute(builder: (BuildContext context)=>EmailScreen());
      case RoutesNames.othwaylog:
            return MaterialPageRoute(builder: (BuildContext context)=>OtherWayLogin());
      case RoutesNames.btmnv:
        return MaterialPageRoute(builder: (BuildContext context)=>BottomNav());
      // case RoutesNames.countrycodesc:
      //   return MaterialPageRoute(builder: (BuildContext context)=>OtherWayLogin());
      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
  }
}