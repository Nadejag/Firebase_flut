import 'package:cashbook/model/videocard_model.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/widgets/search_bar.dart';
import 'package:cashbook/view/answers.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {

  final List<Map<String, String>> allFaqs = [
    {"question": "How to use CashBook App?", "category": "Basics"},
    {"question": "How to do backdated entries?", "category": "Basics"},
    {"question": "How to view daily or monthly data in a book?", "category": "Reports"},
    {"question": "How to Change Mobile Number?", "category": "Business Profile"},
    {"question": "How to setup App Lock with Fingerprint/Pin/Password?", "category": "Security"},
  ];

  String selectedCategory = "All (51)";

  final List<String> categories = [
    "All (51)", "Basics (11)", "Business Profile (5)","Business Team(9","Backup(2","Entry Field(3)","Opening Balance(2)",
    "Filters(6)","Reports(4)","Search(1)","Descktop/PC(2)","PassBook(6)"
  ];

  final List<String> videoTile = [
    "How to use CashBook App?", "What is Business Profile",
  ];

  final List<String> videoUrl = [
    "All (51)", "Basics (11)", "Business Profile (5)"
  ];

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height * 1;
    final width=MediaQuery.sizeOf(context).width * 1;
  // final faqs=faqCategories[selectedCategory]??[];
    final filteredFaqs = selectedCategory == "All (51)"
        ? allFaqs
        : allFaqs
        .where((faq) => selectedCategory.toLowerCase().contains(faq['category']!.toLowerCase()))
        .toList();
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text('Help & Support',
            style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.7)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: Stack(
            children: [
              Column(
                children: [
                  AppSearchBar(font: 14.5, size: 20, color: colorss().black1, iconcolor: colorss().black1, hint: 'Search..',),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text("Frequently asked questions",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.7)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: videocard_model(),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("\t\t\tCategories", style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: categories.map((cat) {
                        final isSelected = cat == selectedCategory;
                        return GestureDetector(
                          onTap: () => setState(() => selectedCategory = cat),
                          child: Padding(
                            padding: const EdgeInsets.all(7.5),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 13),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.blue.shade50 : Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: isSelected ? Colors.blue.shade200 : Colors.transparent),
                              ),
                              child: Center(
                                child: Text(
                                  cat,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: isSelected ? Colors.blue : Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredFaqs.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                              dense: true,
                              visualDensity: VisualDensity(vertical: -4),
                              title: Text(filteredFaqs[index]['question']!, style: TextStyle(fontSize: 12.4)),
                              trailing: Icon(Icons.arrow_forward_ios, size: 13),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FaqDetailScreen(
                                      question: filteredFaqs[index]['question']!,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(color: Colors.grey.withOpacity(0.3)),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),

              /// 💡 Correctly Positioned FABs at bottom-right
              Positioned(
                bottom: 16,
                right: 16,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.05,
                      width: width * 0.2 / 1.7,
                      child: FloatingActionButton(
                        backgroundColor: colorss().whitecolor1.withOpacity(0.6),
                        onPressed: () {},
                        child: Icon(Icons.email_outlined),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03/1.2),
                    Container(
                      height: height * 0.05,
                      width: width * 0.2 / 1.8,
                      child: FloatingActionButton(
                        backgroundColor: colorss().greencolor1,
                        onPressed: () {},
                        child:Image(image: AssetImage("assets/images/img_1.png"), width: 33,),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ;
  }
}

