import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FancyDesignMain extends StatefulWidget {
  @override
  _FancyDesignMainState createState() => _FancyDesignMainState();
}

class _FancyDesignMainState extends State<FancyDesignMain> {

  var selectedFood = "BURGER";

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[

          Stack(
            children: <Widget>[
              Container(
                height: screenHeight * 0.5,
              ),
              ShaderMask(
                shaderCallback: (rect){
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent]
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },

                blendMode: BlendMode.dstIn,
                child: Image.asset("assets/tokyo.jpg",
                  height: screenHeight * 0.4,
                  width: screenWidth,
                  fit: BoxFit.cover,
                ),
              ),

              RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "JAPAN",
                  style: TextStyle(
                    fontSize: 75,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.3),
                    letterSpacing: 10.0
                  ),
                ),

              ),

              Positioned(
                top: 10,
                right: 5,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Icon(Icons.menu, ),
                ),
              ),
              Positioned(
                top: 6,
                right: 5,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD3664)
                  ),
                ),
              ),



              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  widthFactor: 1,
                  heightFactor: 1,

                  child: Padding(
                    padding: const EdgeInsets.only(
                        left:25.0,
                      right: 25
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('WELCOME TO',
                            style: GoogleFonts.oswald(
                                fontSize: 32.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),


                        Row(
                          children: <Widget>[
                            Text('TOKYO',
                                style: GoogleFonts.oswald(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFD3664))),
                            Text(',',
                                style: GoogleFonts.oswald(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            SizedBox(width: 10.0),
                            Text('JAPAN',
                                style: TextStyle(
                                    fontFamily: 'Oswald',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF262626),
                            borderRadius: BorderRadius.circular(15)
                          ),

                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                                hintText: "Lets explore some food here...",
                              hintStyle: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontSize: 12
                              ),

                              prefixIcon: Icon(Icons.search,
                                color: Colors.grey,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],

          ),

          SizedBox(
            height: 30,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _buildMenuItem('BURGER', Icons.fastfood),
            _buildMenuItem('TEA', Icons.local_drink),
            _buildMenuItem('BEER', Icons.local_drink),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('CAKE', Icons.cake),
              _buildMenuItem('COFFEE', Icons.cloud),
              _buildMenuItem('MEAT', Icons.restaurant),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('ICE', Icons.insert_chart),
              _buildMenuItem('FISH', Icons.filter_tilt_shift),
              _buildMenuItem('DONUTS', Icons.donut_small),
            ],
          )

        ],
      ),
    );
  }

  Widget _buildMenuItem(String foodName, iconData){
    return InkWell(
      splashColor: Colors.transparent,
      onTap: (){
        selectMenuOption(foodName);
      },
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: Duration(milliseconds:  300),
        height: selectedFood == foodName ? 110.0: 75,
        width: selectedFood == foodName ? 110.0: 75,
        color: selectedFood == foodName ? Color(0xFFFD3566) : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Icon(
              iconData,
              color: selectedFood == foodName ? Colors.white : Colors.grey,
              size: selectedFood == foodName ? 30 : 25,
            ),

            SizedBox(
              height: 12,
            ),

            Text(foodName,
              style: GoogleFonts.montserrat(
                color: selectedFood == foodName ? Colors.white : Colors.grey,
                fontSize: selectedFood == foodName ? 15: 10,
              ),
            )

          ],
        ),
      ),
    );
  }

  selectMenuOption(String foodName){
    setState(() {
      selectedFood = foodName;
    });
  }

}
