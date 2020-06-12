import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      height: 60,
                      width: 60,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/profilepic.jpg"))),
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
                                width: 1.0)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Where",
                  style: GoogleFonts.openSans(
                      fontSize: 50, color: Color(0xFFFD6F4F)),
                ),
                Text(
                  "will you go",
                  style: GoogleFonts.openSans(
                    fontSize: 50,
                  ),
                ),
                Text(
                  "today",
                  style: GoogleFonts.openSans(
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: 70.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF9F9F9)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.withOpacity(0.7),
                      ),
                      hintText: "What would you like to discover",
                      hintStyle: GoogleFonts.openSans(
                          fontSize: 15, color: Colors.grey.withOpacity(0.7))),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Most Popular",
                    style: GoogleFonts.openSans(fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Container(
                height: 300.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildCard(
                        'Pamir Mountains, China', '4.1', 'assets/mountain.jpg'),
                    _buildCard(
                        'Kathmandu city, Nepal', '3.8', 'assets/kathmandu.jpg')
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildCard(String title, String rating, String imgPath) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 275,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 275,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.4)),
            ),

            Positioned(
              top: 10.0,
              left: 10.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black.withOpacity(0.2)),
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.white, size: 12.0),
                            SizedBox(width: 5.0),
                            Text(
                              rating,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                  ),
                  SizedBox(width: 50.0),
                  Text(
                    'More',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Opensans'),
                  ),
                  SizedBox(width: 7.0),
                  //this should be an iconbutton in a real app.
                  Icon(Icons.arrow_drop_down, color: Colors.white, size: 25.0)
                ],
              ),
            ),

            Positioned(
              top: 165.0,
              left: 10.0,
              child: Container(
                width: 150.0,
                child: Text(title,
                    style: GoogleFonts.openSans(
                        fontSize: 17.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
              ),
            ),


            Positioned(
                top: 225.0,
                left: 10.0,
                child: Row(children: [
                  Text('I was here',
                      style: TextStyle(
                          fontFamily: 'Opensans',
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                  SizedBox(width: 15.0),
                  Stack(
                    children: <Widget>[
                      Container(height: 40.0, width: 100.0),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage('assets/profilepic.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        left: 30.0,
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white),
                          child: Center(
                            child: Text('+17..',
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.black)),
                          ),
                        ),
                      )
                    ],
                  )
                ]))


          ],
        ),
      ),
    );
  }
}
