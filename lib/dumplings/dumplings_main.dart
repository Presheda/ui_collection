
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicollection/dumplings/donut_page.dart';


class DumplingsHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DumplingsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 185.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/model2.jpg")
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),

                      Text("Francis Austin",
                        style: GoogleFonts.openSans(
                          fontSize: 17
                        ),
                      )
                    ],

                  ),
                ),

                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.cake, color: Colors.grey.withOpacity(0.7),),
                ),

              ],
            ),
          ),

          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/dumpling.png")
              )
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Center(
            child: Text(
              "DUMPLINGS",
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF322F2E)
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          Center(
            child: Text(
              "喜欢订阅",
              style: GoogleFonts.openSans(
                color: Color(0xFF808080),
                fontWeight: FontWeight.bold,
                fontSize: 20

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 30.0,
              child: Text(
                'These tasty treats make a perfect appetizer or you can serve them as a main dish. For a main dish count on about 15 dumplings per person. Serve with hoisin sauce, hot Chinese-style mustard and toasted sesame seeds.',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.5,
                    color: Color(0xFF8E8989)),
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.remove_circle_outline,
                        color: Color(0xFFC4C2C5),
                      ),
                      onPressed: (){}
                  ),

                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("\$6.99",
                          style: GoogleFonts.openSans(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF322F2E)
                          ),
                        ),

                        Text("1 ORDER",
                          style: GoogleFonts.openSans(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF322F2E)
                          ),
                        ),


                      ],
                    ),
                  ),

                  IconButton(
                    icon: Icon(Icons.add_circle_outline,
                      color: Color(0xFF4C4A4A),
                    ),
                    onPressed: (){},
                  )

                ],
              ),
            ),

          ),

          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (c)=> DonutPage()
                ));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF312F2E),
                child: Center(
                  child: Text("Add to Basket",
                    style: GoogleFonts.openSans(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 3,
          ),

          Center(
            child: Text(
              'Get the second order in half price',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12.0,
                  color: Color(0xFF8E8989)),
            ),
          ),

          SizedBox(
            height: 20,
          ),



        ],
      ),
    );
  }
}

