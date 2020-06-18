import 'package:fire_proje/constant.dart';
import 'package:fire_proje/widget/category.dart';
import 'package:flutter/material.dart';
import 'httpexample.dart';
import 'widget/restaruant_card.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 40,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey[200],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Row(
                      children: [
                        Icon(Icons.search,color: Colors.grey),
                        Container(
                          padding: EdgeInsets.only(left:10),
                          child:Text(
                    "Find Restaruant",
                    style: TextStyle(decoration:TextDecoration.none,fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w600),
                        ),
                      )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.settings,size: 22,color: Colors.grey),
                  ),
                ],
              ), 
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Trending Restaruant",
                    style: headingStyle,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    "See All(45)",
                    style: subTitle,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Restaruant(
                      title: "New Food",
                      image: "asset/food_image.png",
                      country: "Turkey",
                      km: "4.5",
                    ),
                    Restaruant(
                      title: "Awesome !",
                      image: "asset/foody.png",
                      country: "Colombia",
                      km: "12.5",
                    ),
                    Restaruant(
                      title: "Perfect !",
                      image: "asset/hamburger.png",
                      country: "Las Vegas",
                      km: "5.5",
                    ),
                    Restaruant(
                      title: "Great !",
                      image: "asset/normal.png",
                      country: "Antalya",
                      km: "20.5",
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text("Category",style: headingStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text("See All(9)",style: subTitle),
                ),              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Category(
                    image: "asset/category_image.png",
                    category: "Italian",
                    color: Color(0xFFe36387),
                    tcolor: Color(0xFFffcd3c),
                  ),
                  Category(
                    image: "asset/category_image.png",
                    category: "Mexican",
                    color: Color(0xFFf2aaaa),
                    tcolor: Color(0xFF6a197d),
                  ),
                Category(
                    image: "asset/category_image.png",
                    category: "Chinese",
                    color: Color(0xFF5fdde5),
                    tcolor: Color(0xFF1f4068),
                  ),
                  Category(
                    image: "asset/category_image.png",
                    category: "Turkey",
                    color: Color(0xFFf2a365),
                    tcolor: Color(0xFF222831),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text("Friends",style: headingStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text("See All(56)",style: subTitle),
                ),              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("asset/girl.png"),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage("asset/man.png"),
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("asset/party.png"),
                    ),
                  ),
                                    Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("asset/girl.png"),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage("asset/man.png"),
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("asset/party.png"),
                    ),
                  ),
                                    Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("asset/girl.png"),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage("asset/man.png"),
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("asset/party.png"),
                    ),
                  ),  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
