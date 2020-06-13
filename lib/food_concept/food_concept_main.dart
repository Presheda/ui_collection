import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodConceptMain extends StatefulWidget {
  @override
  _FoodConceptMainState createState() => _FoodConceptMainState();
}

class _FoodConceptMainState extends State<FoodConceptMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.black,),
                ),

                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/avocado.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Good",
                  style: GoogleFonts.montserrat(
                    fontSize: 50,
                    color: Color(0xFF5B8842),
                    fontWeight: FontWeight.bold
                  ),
                ),

                Text("Morning",
                  style: GoogleFonts.montserrat(
                    fontSize: 50,
                    color: Color(0xFF5B8842),
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Text("Popular Food",
                  style: GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.w600
                  ),
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
