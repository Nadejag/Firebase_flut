import 'package:cashbook/pratice/ui/posts/posts.dart';
import 'package:cashbook/pratice/ui/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../widgets/roundbbutton.dart';

class VerifyCodeScreen extends StatefulWidget {
  final String verificationId;
  const VerifyCodeScreen({super.key, required this.verificationId});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  bool loading=false;
  final _auth=FirebaseAuth.instance;
  final verifactioncodecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify"),
      ),
      body: Column(
        children: [
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: verifactioncodecontroller,
              decoration: InputDecoration(
                  hintText: "6 digit code"
              ),
            ),
          ),
          SizedBox(height: 80,),
          RoundButton(title: "Verify",loading: loading, onTap: ()async{

            setState(() {
              loading=true;
            });
              final credential = PhoneAuthProvider.credential(
                  verificationId: widget.verificationId,
                  smsCode: verifactioncodecontroller.text.toString());
              try{
                await _auth.signInWithCredential(credential);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Posts_screen()));

              }
                  catch(e){
                    setState(() {
                      loading=false;
                    });
                    Utils().toastMessage(e.toString());
                  }
          })
        ],
      ),
    );
  }
}
