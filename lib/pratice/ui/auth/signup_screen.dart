import 'package:cashbook/pratice/ui/auth/login_screen.dart';
import 'package:cashbook/pratice/ui/utils.dart';
import 'package:cashbook/pratice/widgets/roundbbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp_Screen extends StatefulWidget {

  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  FirebaseAuth _auth=FirebaseAuth.instance;

  bool loading=false;
  final _formkey=GlobalKey<FormState>();
  final emailcontroller=TextEditingController();
  final Passwordcontroller=TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    Passwordcontroller.dispose();
  }
  void Signup(){
    setState(() {
      loading=true;
    });
    _auth.createUserWithEmailAndPassword(email: emailcontroller.text.toString(),
        password: Passwordcontroller.text.toString()).then((value){
      setState(() {
        loading=false;
      });
    }).onError((error,stackTrace){
      Utils().toastMessage(error.toString());
      setState(() {
        loading=false;
      });
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),),
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
            RoundButton(
              loading: loading,
              title: "Sign up",
              onTap: () {

                if(_formkey.currentState!.validate()){
                  Signup();
                };
              },),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreenPractice()));
                },
                    child: Text("login")
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
