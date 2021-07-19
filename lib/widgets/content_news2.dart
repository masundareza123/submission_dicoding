import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:submission_dicoding/shared/ui_helper.dart';

class ContentNews2 extends StatelessWidget {
  const ContentNews2({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 5),
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('lib/assets/News.png', fit: BoxFit.fill),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("Lorem ipsum Lorem ipsum, or lipsum",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                ),
                verticalSpaceSmall,
                Text("Sep 16, 2021", style: TextStyle(color: Colors.black26),),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(FontAwesomeIcons.bookmark),
            ),
          ],
        ),
      ),
    );
  }
}
