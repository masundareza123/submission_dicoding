import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:submission_dicoding/shared/ui_helper.dart';

class ContentNews1 extends StatelessWidget {
  const ContentNews1({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0)
          ),
          child: InkWell(
            onTap: (){},
            child: Padding(
              padding: EdgeInsets.all(2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 220,
                    height: 80,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: ClipRRect(

                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('lib/assets/News.png',fit: BoxFit.fill,),
                    ),
                  ),
                  verticalSpaceMedium,
                  Container(
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left:5),
                          child: Container(
                            child: Text(
                              "Lorem ipsum Lorem ipsum, or lipsum",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            width: 160,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(FontAwesomeIcons.bookmark),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
