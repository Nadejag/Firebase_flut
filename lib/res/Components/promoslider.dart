import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TPromoSlider extends StatefulWidget {
  @override
  State<TPromoSlider> createState() => _TPromoSliderState();
}

class _TPromoSliderState extends State<TPromoSlider> {
  List<Map<String, dynamic>> _promotions = [];
  int _currentPromoIndex = 0;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPromotions();
  }

  void _loadPromotions() {
    // Simulating data fetch with delay
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _promotions = [
          {
            "image": "assets/images/onboarding/image1.jpeg",
            "title": "Track Income & Expenses",
            "desc": "Stay updated on your profile",
            "productid": 101,
          },
          {
            "image": "assets/images/onboarding/image2.jpeg",
            "title": "Manage Your Business with Staff",
            "desc": "Add team members & assign roles",
            "productid": 102,
          },
          {
            "image": "assets/images/onboarding/image3.jpeg",
            "title": "PDF & Excel Reports",
            "desc": "Easily download & shares with others",
            "productid": 103,
          },
          {
            "image": "assets/images/onboarding/image4.jpeg",
            "title": "Set-Up Multiple Businesses",
            "desc": "Keep multiple business reports on one app",
            "productid": 104,
          },
        ];
        _isLoading = false;
      });
    });
  }

  // void _navigateToProductDetails(int productId) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => ProductDetailsScreen(productId: productId),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: _promotions.map((promo) {
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 10,
                  child: Center(child: Image(image: AssetImage(promo['image']),),)
                ),

               SizedBox(height: 20,),
                SizedBox(
                  height: 100,
                  child: Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(promo['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text(promo['desc'],style: TextStyle( fontSize: 14),)
                      ],
                    ),
                  ),
                )
              ],
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 15,
            onPageChanged: (index, reason) {
              setState(() {
                _currentPromoIndex = index;
              });
            },
          ),
        ),
        SizedBox(height: 200,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: _promotions.asMap().entries.map((entry) {
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPromoIndex == entry.key ? Colors.blueAccent.shade700 : Colors.grey.shade400,
                    ),
                  );
                }).toList(),
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.3),
    borderRadius: BorderRadius.circular(100.0),
                ),
                child:Center(
                  child: Icon(Icons.arrow_forward_ios_sharp,size: 17,),
                ) ,
              )
            ],
          ),
        ),

      ],
    );
  }
}


