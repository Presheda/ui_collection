
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelMasterMain extends StatefulWidget {
  @override
  _TravelMasterMainState createState() => _TravelMasterMainState();
}

class _TravelMasterMainState extends State<TravelMasterMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.donut_large),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 60, width: 60,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/profilepic.jpg")
                        )
                      ),
                    ),

                    Positioned(
                      left: 5,
                      top: 40,
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.5),
                          color: Colors.green,
                          border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 1.0

                          )
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
