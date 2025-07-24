import 'package:cashbook/pratice/ui/auth/Login_with_phone_number.dart';
import 'package:cashbook/pratice/ui/auth/signup_screen.dart';
import 'package:cashbook/pratice/ui/utils.dart';
import 'package:cashbook/pratice/widgets/roundbbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../forgot_password.dart';
import '../posts/posts.dart';

class LoginScreenPractice extends StatefulWidget {

  const LoginScreenPractice({super.key});

  @override
  State<LoginScreenPractice> createState() => _LoginScreenPracticeState();
}

class _LoginScreenPracticeState extends State<LoginScreenPractice> {
  final _auth=FirebaseAuth.instance;
  final _formkey=GlobalKey<FormState>();
  final emailcontroller=TextEditingController();
  final Passwordcontroller=TextEditingController();
  bool loading=false;
  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    Passwordcontroller.dispose();
  }


  void login(){
    _auth.signInWithEmailAndPassword(email: emailcontroller.text.toString(), password: Passwordcontroller.text.toString()).then((value){
            Utils().toastMessage(value.user!.email.toString());
            Navigator.push(context, MaterialPageRoute(builder: (context) => Posts_screen()));
    }).onError((error,stackTrace){
      debugPrint(error.toString());
      Utils().toastMessage(error.toString());
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:()async{
        SystemNavigator.pop();
        return true;
      } ,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Login"),),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailcontroller,
                        decoration: InputDecoration(
                            hintText: "email",
                            prefixIcon: Icon(Icons.alternate_email)
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter Email";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: Passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "password",
                            prefixIcon: Icon(Icons.lock_outline)
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter password";
                          }
                          return null;
                        },
                      ),
                    ],
                  )),
              SizedBox(height: 50,),

              Align(
                alignment: Alignment.bottomRight,
                child: RoundButton(
                  loading:loading ,
                  title: "Login",
                      onTap: () {
                          if(_formkey.currentState!.validate()){
                            login();
                          };
                      },),
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
              },
                  child: Text("Forgot Password?")
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_Screen()));
                  },
                      child: Text("Sign Up")
                  )
                ],
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginWithPhoneNumber()));
                },
                child: Container(
                  height: 50,
                  child: Center(
                    child: Text("Login with phone"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
