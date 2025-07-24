import 'dart:io';
import 'dart:math';

import 'package:cashbook/pratice/ui/utils.dart';
import 'package:cashbook/pratice/widgets/roundbbutton.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart'as firebase_storage;

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({super.key});

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

bool loading = false;
class _UploadImageScreenState extends State<UploadImageScreen> {
 File? _image;

 final picker=ImagePicker();//use for access gallery;

 DatabaseReference databaseRef=FirebaseDatabase.instance.ref("Post");

firebase_storage.FirebaseStorage storage=firebase_storage.FirebaseStorage.instance;
   Future GetGalleryImage() async{
 final pickedfile=await picker.pickImage(source: ImageSource.gallery,imageQuality: 80);
 setState(() {
   if(pickedfile != null){
     _image = File(pickedfile.path);
   }

   else{
     print("no image picked");
   }
 });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Upload"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
               onTap: (){

                 GetGalleryImage();
               },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  child: Center(
                    child:_image !=null ?Image.file(_image!.absolute) :Icon(Icons.image),
                  ),
                ),
              ),
            ),
            SizedBox(height: 39,),
            RoundButton(title: "Upload",loading: loading, onTap: ()async{

              setState(() {
                loading=true;
              });

              firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance.ref('/foldername/'+'1234');
              firebase_storage.UploadTask uploadTask = ref.putFile(_image!.absolute);

              await Future.value(uploadTask).then((value)async{
                var newUrl=await ref.getDownloadURL();

                databaseRef.child('123').set(
                    {
                      "id":"123",
                      'title':newUrl.toString()
                    }
                ).then((value){
                  setState(() {
                    loading=false;
                  });
                  Utils().toastMessage("Uploaded");
                }).onError((error,st){
                  setState(() {
                    loading=false;
                  });
                });
              }).onError((error,st){
                Utils().toastMessage(error.toString());
                setState(() {
                  loading=false;
                });
              });


            })
          ],
        ),
      ),
    );
  }
}
