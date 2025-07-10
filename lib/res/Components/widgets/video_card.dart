import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoCard extends StatelessWidget {
  final String videoTitle;
  final String videoUrl;
  final String thumbnail;
   VideoCard({ required this.videoTitle, required this.videoUrl, required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    int index=0;
    return InkWell(
      onTap: ()=>launchUrl(Uri.parse(videoUrl)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               Image(image: AssetImage("assets/images/thumbnail/${thumbnail}.png"),width: 200,)
             ],
           ),
         ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(videoTitle,style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.black87.withOpacity(0.7),letterSpacing: 0.4),textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}
