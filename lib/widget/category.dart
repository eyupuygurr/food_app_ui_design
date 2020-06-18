import 'package:fire_proje/constant.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  final String image;
  final String category;
  final Color color;
  final Color tcolor;

  Category({
    Key key,
    this.image,
    this.category,
    this.color,
    this.tcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(top:5),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
            image: AssetImage(image),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              color,
              tcolor,
            ]
          )
        ),
        child: Center(
          child: Text(category,style: categoryStyle),
        ),
      ),
    );
  }
}