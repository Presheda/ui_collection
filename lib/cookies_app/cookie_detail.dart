
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_bar.dart';

class CookieDetail extends StatelessWidget {

  final assetPath, cookiePrice, cookieName;


  CookieDetail({this.assetPath, this.cookiePrice, this.cookieName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFF545D68),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          "Pickup",
          style: GoogleFonts.varela(fontSize: 20, color: Color(0xFF545D68)),
        ),
        actions: <Widget>[
          IconButton(
              color: Color(0xFF545D68),
              icon: Icon(Icons.notifications),
              onPressed: () {}),
        ],
      ),

      body: ListView(
        children: <Widget>[
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Cookies",
              style: GoogleFonts.varela(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532)
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),

          Hero(
            tag: assetPath,
            child: Image.asset(assetPath,

              height: 150,
              width: 100,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 20,),

          Center(
            child: Text(cookiePrice,
            style: GoogleFonts.varela(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF17532)
            ),),
          ),

          SizedBox(
            height: 20,
          ),

          Center(
            child: Text(cookieName,
              style: GoogleFonts.varela(
                fontSize: 24,
                color: Color(0xFF575E67),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),


          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text('Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))
              ),
            ),
          ),



          SizedBox(
            height: 20,
          ),


          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFFF17532)
              ),

              child: Center(
                child: Text("Add to cart",
                  style: GoogleFonts.varela(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          )


        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),

    );
  }
}
