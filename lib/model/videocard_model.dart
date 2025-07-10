import 'package:cashbook/res/Components/widgets/video_card.dart';
import 'package:flutter/cupertino.dart';

class videocard_model extends StatelessWidget {
  const videocard_model({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VideoCard(videoTitle: "How to use CashBook App?", videoUrl: "https://youtu.be/4RGcl4MBTL4?si=EaxO9uBY0LlfXHVd.com", thumbnail: 'img',),
        SizedBox(width: 10),
        VideoCard(videoTitle: "What is Business Profile?", videoUrl: "https://youtube.com", thumbnail: 'img_1',),
        SizedBox(width: 10),
        VideoCard(videoTitle: "How to create Business Profile?", videoUrl: "https://youtu.be/4RGcl4MBTL4?si=EaxO9uBY0LlfXHVd.com", thumbnail: 'img_2',),
        SizedBox(width: 10),
        VideoCard(videoTitle: "What is Business team?", videoUrl: "https://youtube.com", thumbnail: 'img_3',),
        SizedBox(width: 10),
        VideoCard(videoTitle: "How to Add team members in business?", videoUrl: "https://youtu.be/4RGcl4MBTL4?si=EaxO9uBY0LlfXHVd.com", thumbnail: 'img_4',),
        SizedBox(width: 10),
        VideoCard(videoTitle: "How to change business owner?", videoUrl: "https://youtube.com", thumbnail: 'img_5',),

        SizedBox(width: 10),
        VideoCard(videoTitle: "How to add opening balance in existing book?", videoUrl: "https://youtu.be/4RGcl4MBTL4?si=EaxO9uBY0LlfXHVd.com", thumbnail: 'img_6',),
        SizedBox(width: 10),
        VideoCard(videoTitle: "How to share/export the PDF reports?", videoUrl: "https://youtube.com", thumbnail: 'img_7',),
        SizedBox(width: 10),
        VideoCard(videoTitle: "How to use CashBook on Desktop or PC?", videoUrl: "https://youtu.be/4RGcl4MBTL4?si=EaxO9uBY0LlfXHVd.com", thumbnail: 'img_8',),
        SizedBox(width: 10),
        VideoCard(videoTitle: "Latest updates on CashBook App", videoUrl: "https://youtube.com", thumbnail: 'img_9',),
        // SizedBox(width: 10),
        //  VideoCard(videoTitle: "How to use CashBook App?", videoUrl: "https://youtu.be/4RGcl4MBTL4?si=EaxO9uBY0LlfXHVd.com", thumbnail: 'img_10',),

      ],
    );
  }
}