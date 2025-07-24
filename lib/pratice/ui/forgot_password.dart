import 'package:cashbook/pratice/ui/utils.dart';
import 'package:cashbook/pratice/widgets/roundbbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailcontroller=TextEditingController();
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                 TextFormField(
                   controller: emailcontroller,
                   decoration: InputDecoration(
                     hintText: "email"
                   ),
                 ),
            SizedBox(height: 40,),
            RoundButton(title: "Forget", onTap: (){
           auth.sendPasswordResetEmail(email: emailcontroller.text.toString()).then((value){
             Utils().toastMessage("We have sent you email to recover password, please check email");
           }).onError((error,st){
             Utils().toastMessage(error.toString());
           });
            })
          ],
        ),
      ),
    );
  }
}
