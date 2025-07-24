import 'package:cashbook/pratice/ui/auth/verify_code.dart';
import 'package:cashbook/pratice/ui/utils.dart';
import 'package:cashbook/pratice/widgets/roundbbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginWithPhoneNumber extends StatefulWidget {
  const LoginWithPhoneNumber({super.key});

  @override
  State<LoginWithPhoneNumber> createState() => _LoginWithPhoneNumberState();
}

class _LoginWithPhoneNumberState extends State<LoginWithPhoneNumber> {
  bool loading=false;
  final _auth=FirebaseAuth.instance;
  final phonenumbercontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Column(
        children: [
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              controller: phonenumbercontroller,
              decoration: InputDecoration(
                hintText: "+1 234 3455 234"
              ),
            ),
          ),
          SizedBox(height: 80,),
          RoundButton(
              title: "Login",loading: loading, onTap: (){
                  setState(() {
                    loading=true;
                  });
            _auth.verifyPhoneNumber(
              phoneNumber: phonenumbercontroller.text,
                verificationCompleted: (_){
                  setState(() {
                    loading=false;
                  });
                },
                verificationFailed: (e){
                  setState(() {
                    loading=false;
                  });
                Utils().toastMessage(e.toString());
                },
                codeSent: (String verificationId,int? token){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyCodeScreen(verificationId: verificationId,)));
                    setState(() {
                      loading=false;
                    });
                    },
                codeAutoRetrievalTimeout: (e){
                Utils().toastMessage(e.toString());
                setState(() {
                  loading=false;
                });
                }
            );
          })
        ],
      ),
    );
  }
}
