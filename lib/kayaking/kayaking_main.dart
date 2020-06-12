import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicollection/kayaking/kayak_page.dart';

class KayakingMain extends StatefulWidget {
  @override
  _KayakingMainState createState() => _KayakingMainState();
}

class _KayakingMainState extends State<KayakingMain> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/norway5.jpeg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
            child: Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFFF3FAFC)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search all activities",
                      hintStyle: GoogleFonts.inconsolata(
                          fontSize: 16, color: Color(0xFF89969C)),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF89969C),
                      )),
                ),
              ),
            ),
          ),
          Positioned(
            top: (screenHeight / 2) - 100,
            left: (screenWidth / 2) - 75,
            child: Container(
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF274B61)),
                    child: Center(
                      child: Text(
                        "How can I help you?",
                        style: GoogleFonts.inconsolata(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage("assets/model.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 37,
                        left: 30,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                  style: BorderStyle.solid),
                              color: Color(0xFF1DC0BF)),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),

          Positioned(
            top: screenHeight /2 + 75,
            left: 25,
            right: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: screenWidth -50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Geiranger, Norway",
                        style: GoogleFonts.inconsolata(
                            color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),

                      Icon(Icons.location_on, color: Colors.white, size: 17,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 2,
                  width: screenWidth,
                  color: Colors.white,
                ),

                SizedBox(height: 15,),
                Text("Discover Kayaking",
                  style: GoogleFonts.inconsolata(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 15,),

                Container(
                  width: MediaQuery.of(context).size.width - 100.0,
                  child: Text(
                      'Join us for a fun, relaxed and intimate experience of the majestic Geirangerfiord. Whatever the weather is like or whatever previous paddling experience you have.',
                      style: GoogleFonts.inconsolata(
                        fontSize: 14.0,
                        color: Colors.white,
                      )),
                ),

                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage("assets/norway1.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),

                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage("assets/norway6.jpeg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),

                     Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage("assets/norway7.jpeg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (c)=> KayakPage() ));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF1FC0C0)
                        ),
                        child: Center(
                          child: Text(
                            "38",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17
                            ),
                          ),
                        ),
                      ),
                    )


                  ],
                ),


              ],
            ),
          )


        ],
      ),
    );
  }
}
