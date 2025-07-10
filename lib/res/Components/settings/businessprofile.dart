import 'package:cashbook/res/Components/camera.dart';
import 'package:cashbook/res/Components/color.dart';
import 'package:cashbook/res/Components/settings/business_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Businessprofile extends StatefulWidget {
  const Businessprofile({super.key});

  @override
  State<Businessprofile> createState() => _BusinessprofileState();
}

class _BusinessprofileState extends State<Businessprofile> {
  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      "Basics", "Business Info","Communication"
    ];
    String selectedCategory = "Basics";
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    double profileCompletion = 0.525;
    return Scaffold(
      backgroundColor: colorss().bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60), // height of your custom app bar
        child: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Card(
            elevation: 1, // shadow effect
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  'Help & Support',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height*0.01/1.3,),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(7),
                      value: profileCompletion,
                      backgroundColor: Colors.orangeAccent.withOpacity(0.4),
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                      minHeight: 7,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Profile Strength: Medium",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          "${(profileCompletion * 100).toStringAsFixed(1)}%",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: width * 1/1.1,
                    height: height * 0.05 / 1,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: width * 0.03),
                        Icon(Icons.info, color: Colors.deepPurple),
                        SizedBox(width: width * 0.03),
                        Text(
                          "6 out of 10 fields are incomplete. Fill these to\ncomplete your profile",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:height*0.02/1.4,)
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                color: Colors.white,
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
                          child: Center(
                            child: Text(
                              cat,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: isSelected ? Colors.indigo.withOpacity(0.9) : Colors.black87.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
           SizedBox(height: height*0.01,),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: camera(),
                title: Text("Upload Business Logo",style: TextStyle(fontSize: 13.2,color: Colors.indigo.withOpacity(0.9),fontWeight: FontWeight.bold,),),
                subtitle: Text("File Format,JPEG,PNG",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.4)),),
              ),
            ),
            SizedBox(height: height*0.02/1.5,),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text("Basics",style: TextStyle(fontSize: 12.4),),
            ),
            SizedBox(height: height*0.02/1.5,),
            Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                             children: [
                               BusinessList(title: 'Business Name', subtitle: 'Computer', leadicon:Icon(Icons.business) , trailicon: Icon(Icons.edit_outlined)),
                               BusinessList2(title: 'Business Address', subtitle: 'Add business location', leadicon:Icon(Icons.location_on_outlined) , trailicon: Icon(Icons.add)),
                               BusinessList2(title: 'Staff Size', subtitle: 'Select no. of staff members', leadicon:Icon(Icons.people_alt_outlined) , trailicon: Icon(Icons.add)),
                             ],
                     ),
                    SizedBox(height: height*0.02/1.5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text("Business Info",style: TextStyle(fontSize: 12.4),),
                    ),
                    SizedBox(height: height*0.01,),
                    Column(
                      children: [
                        BusinessList(title: 'Business Category', subtitle: 'Food/Restaurant', leadicon:Icon(Icons.category_outlined) , trailicon: Icon(Icons.edit_outlined)),
                        BusinessList2(title: 'Business Subcategory', subtitle: 'Ex. Farmer,poultry etc.', leadicon:Icon(Icons.location_on_outlined) , trailicon: Icon(Icons.add)),
                        BusinessList(title: 'Business Type', subtitle: 'Retailer',leadicon: Icon(Icons.account_tree_outlined), trailicon: Icon(Icons.edit_outlined)),
                        BusinessList2(title: 'Business Subcategory', subtitle: 'Ex. Farmer,poultry etc.', leadicon:Icon(Icons.cases) , trailicon: Icon(Icons.add)),
                      ],
                    ),
                    SizedBox(height: height*0.02/1.5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text("Communication",style: TextStyle(fontSize: 12.4),),
                    ),
                    SizedBox(height: height*0.01,),
                    Column(
                      children: [
                        BusinessList2(title: "Business Mobile Number", trailicon:Icon(Icons.add) , subtitle: "Add mobile number", leadicon: Icon(Icons.phone)),
                        BusinessList(title: 'Business Email', subtitle: 'mohammedqabool64@gmail.com', leadicon:Icon(Icons.email_outlined) , trailicon: Icon(Icons.edit_outlined)),
                        SizedBox(height: height * 0.8/1)
                       ],
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
