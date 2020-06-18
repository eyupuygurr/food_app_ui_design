import 'package:fire_proje/constant.dart';
import 'package:flutter/material.dart';



class Restaruant extends StatefulWidget {
  final String image;
  final String title;
  final String country;
  final String km;

  Restaruant({
    Key key,
    this.image,
    this.title,
    this.country,
    this.km,
}) : super(key: key);

  @override
  _RestaruantState createState() => _RestaruantState();
}

class _RestaruantState extends State<Restaruant> with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = 
    AnimationController(duration: Duration(seconds: 2),vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.ease);
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
  return Container(
    child: Column(
      children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 5),
              child: Image.asset(widget.image),
            ),
            Container(    
              width: animation.value,
              height: animation.value,
              color: Color(0xFFfffafa),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(widget.title,style: cardTitle),
                   Container(
                        margin: EdgeInsets.symmetric(vertical: 2),
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFffa5b0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 20,
                        child: Center(
                          child: Text(
                            widget.country,
                            style: cardsub,
                          ),
                        ),
                        ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)
                        ),
              child: Center(
                      child: Text(
                            widget.km,
                            style:cardsub,
                          ),
                        ),
                    ),
                  ),
           
                ],
              ),
            ),
            
          ],
        )
  );
  }
}
