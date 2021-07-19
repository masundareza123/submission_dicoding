import 'package:flutter/material.dart';
import 'package:submission_dicoding/shared/ui_helper.dart';

class MyButtonWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final EdgeInsets padding;
  final bool index;
  final Function onTapFunction;
  final Function onSwitchFunction;

  const MyButtonWidget({
    Key, key,
    @required this.padding,
    @required this.title,
    @required this.subTitle,
    @required this.image,
    @required this.index,
    @required this.onSwitchFunction,
    @required this.onTapFunction,
  })
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: padding,
          child: Container(
            width: 165,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan[400], width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: InkWell(
              onTap: onTapFunction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  verticalSpaceMedium,
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: SizedBox(
                        child: Image.asset('$image'),
                        width: 40,
                        height: 40
                    ),
                  ),
                  verticalSpaceSmall,
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      '$title',
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      '$subTitle',
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 15, top: 10),
                    child: InkWell(
                      splashColor: Colors.white,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.decelerate,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                              color: index ? Colors.grey : Colors.cyan[400]
                          ),
                          color: index ? Colors.cyan[400] : Colors.white,
                        ),
                        child: AnimatedAlign(
                          duration: const Duration(milliseconds: 300),
                          alignment: index ? Alignment.centerRight : Alignment.centerLeft,
                          curve: Curves.decelerate,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: index ? Colors.white : Colors.cyan[400],
                                  borderRadius: BorderRadius.circular(100)
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: onSwitchFunction,
                    ),
                  )
                ],
              ),
            ),

          ),
        ),
    );
  }
}

