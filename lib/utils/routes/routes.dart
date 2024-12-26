//

import 'package:ad_bazar/utils/routes/routes_name.dart';
import 'package:ad_bazar/view/auth/loginView.dart';
import 'package:ad_bazar/view/auth/signupView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/splashView.dart';

class routes{
  static Route<dynamic>generateRoute(RouteSettings settings){

    switch(settings.name){
      case routesName.splash:
        return MaterialPageRoute(builder: (BuildContext context)=>Splashview());

      case routesName.login:
        return MaterialPageRoute(builder: (BuildContext context)=>LoginView());
      case routesName.signup:
        return MaterialPageRoute(builder: (BuildContext context)=>SignUpView());
      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }


  }
}