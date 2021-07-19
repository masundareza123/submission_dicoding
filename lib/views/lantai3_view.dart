import 'package:flutter/material.dart';
import 'package:submission_dicoding/widgets/button_widget.dart';
class Lantai3View extends StatefulWidget {
  const Lantai3View({Key, key}) : super(key: key);

  @override
  _Lantai3ViewState createState() => _Lantai3ViewState();
}

class _Lantai3ViewState extends State<Lantai3View> {
  bool semuaAcLantai3 = false;
  bool semuaLampuLantai3 = false;
  bool semuaPintuLantai3 = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 50),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: MyButtonWidget(
                        padding: EdgeInsets.only(right: 3, bottom: 6),
                        title: 'Pendingin Ruangan',
                        subTitle: 'LG',
                        image: 'lib/assets/AC.png',
                        index: semuaAcLantai3,
                        onSwitchFunction: (){
                          setState(() {
                            semuaAcLantai3 =! semuaAcLantai3;
                          });
                        },
                        onTapFunction: (){},
                      )
                  ),
                  Expanded(
                      child: MyButtonWidget(
                        padding: EdgeInsets.only(left: 3, bottom: 6),
                        title: 'Rangkaian Lampu',
                        subTitle: 'LG',
                        image: 'lib/assets/Lampu.png',
                        index: semuaLampuLantai3,
                        onSwitchFunction: (){
                          setState(() {
                            semuaLampuLantai3 =! semuaLampuLantai3;
                          });
                        },
                        onTapFunction: (){},
                      )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  MyButtonWidget(
                    padding: EdgeInsets.only(right: 3, bottom: 6),
                    title: 'Smart Lock Door',
                    subTitle: 'LG',
                    image: 'lib/assets/Pintu.png',
                    index: semuaPintuLantai3,
                    onSwitchFunction: (){
                      setState(() {
                        semuaPintuLantai3 =! semuaPintuLantai3;
                      });
                    },
                    onTapFunction: (){},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
