import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:submission_dicoding/shared/ui_helper.dart';
import 'package:submission_dicoding/widgets/content_news1.dart';
import 'package:submission_dicoding/widgets/content_news2.dart';

class HomeNewsView extends StatefulWidget {
  const HomeNewsView({Key, key}) : super(key: key);

  @override
  _HomeNewsViewState createState() => _HomeNewsViewState();
}

class _HomeNewsViewState extends State<HomeNewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Today's Read",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(FontAwesomeIcons.bell),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                Container(
                  height: 151,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index){
                        return ContentNews1();
                      },
                    ),
                  )
                ),
                verticalSpaceTiny,
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "For you",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                  ),
                ),
                verticalSpaceSmall,
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index){
                      return ContentNews2();
                    },
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
