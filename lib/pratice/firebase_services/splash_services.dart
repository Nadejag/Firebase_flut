import 'dart:async';

import 'package:cashbook/pratice/ui/posts/posts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/login_screen.dart';
import '../ui/auth/login_screen.dart';
import '../ui/upload_image.dart';

class SplashServices{



  void isLogin(BuildContext context){
    final auth=FirebaseAuth.instance;
    final user= auth.currentUser;
    if(user!=null){
      Timer(Duration(seconds: 3), () =>
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Posts_screen())));
    }
    
    else {
      Timer(Duration(seconds: 3), () =>
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginScreenPractice())));
    }
    }
}