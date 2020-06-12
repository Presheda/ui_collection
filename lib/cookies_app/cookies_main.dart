import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_bar.dart';
import 'cookie_page.dart';


class CookiesHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CookiesHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
            onPressed: () {}),
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
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Categories",
            style:
                GoogleFonts.varela(fontSize: 42, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: <Widget>[

              Tab(
                  child: Text(
                "Cookies",
                style: GoogleFonts.varela(fontSize: 21),
              )),

                 Tab(
                  child: Text(
                "Cookie cake",
                style: GoogleFonts.varela(fontSize: 21),
              )),


              Tab(
                child: Text(
                  "Ice cream",
                  style: GoogleFonts.varela(fontSize: 21),
                ),
              )
            ],
          ),

          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    CookiePage(),
                    CookiePage(),
                    CookiePage(),
                  ]
              )
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
