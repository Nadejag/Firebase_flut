import 'package:cashbook/pratice/ui/utils.dart';
import 'package:cashbook/pratice/widgets/roundbbutton.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddpostsScreen extends StatefulWidget {
  const AddpostsScreen({super.key});

  @override
  State<AddpostsScreen> createState() => _AddpostsScreenState();
}

class _AddpostsScreenState extends State<AddpostsScreen> {
  final postcontroller=TextEditingController();
  bool loading=false;
  final databaseRef=FirebaseDatabase.instance.ref("Post");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Column(
        children: [
                 SizedBox(
                   height: 20,
                 ),
          TextFormField(
            controller: postcontroller,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: "What is in your mind?",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RoundButton(
              title: "Add",
              loading: loading,
              onTap: (){
                setState(() {
                  loading=true;
                });
                final String id=DateTime.now().microsecondsSinceEpoch.toString();
                    databaseRef.child(id).set({
                      'title':postcontroller.text.toString(),
                      'id':id
                    }).then((value){
                      setState(() {
                        loading=false
                        ;
                      });
                      Utils().toastMessage('Post added');
                    }).onError((error,stackTrace){
                      Utils().toastMessage(error.toString());
                      setState(() {
                        loading=false;
                      });
                    });
              }
          )
        ],
      ),
    );
  }

}
