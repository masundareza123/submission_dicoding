import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:submission_dicoding/views/lantai1_view.dart';
import 'package:submission_dicoding/views/lantai2_view.dart';
import 'package:submission_dicoding/views/lantai3_view.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:  0,
        leading: Icon(Icons.ac_unit_sharp,
          size: 28,
          color: Colors.black26,
        ),
        title: Text("27° C",
          style: TextStyle(
            fontSize: 24,
            color: Colors.cyan[400]
          ),  
        ),
        actions: [
          Icon(FontAwesomeIcons.solidBell,
            size: 27,
            color: Colors.black38
          )
        ],
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey.withOpacity(1),
                  indicatorColor: Colors.cyan[400],
                  tabs: [
                    Tab(text: "Lantai 1",),
                    Tab(text: "Lantai 2"),
                    Tab(text: "Lantai 3"),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Lantai1View(),
                      Lantai2View(),
                      Lantai3View()
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
