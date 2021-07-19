import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_dicoding/widgets/button_widget.dart';

class Lantai2View extends StatefulWidget {
  @override
  _Lantai2ViewState createState() => _Lantai2ViewState();
}

class _Lantai2ViewState extends State<Lantai2View> {
  bool semuaAcLantai2 = false;
  bool semuaDispenserLantai2 = false;
  bool semuaLampuLantai2 = false;
  bool semuaPintuLantai2 = false;
  bool semuaTvLantai2 = false;



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
                     index: semuaAcLantai2,
                     onSwitchFunction: (){
                       setState(() {
                         semuaAcLantai2 =! semuaAcLantai2;
                       });
                     },
                     onTapFunction: (){},
                   ),
                  ),
                  Expanded(
                    child: MyButtonWidget(
                      padding: EdgeInsets.only(left: 3, bottom: 6),
                      title: 'Dispenser Air',
                      subTitle: 'LG',
                      image: 'lib/assets/Dispenser.png',
                      index: semuaDispenserLantai2,
                      onSwitchFunction: (){
                        setState(() {
                          semuaDispenserLantai2 =! semuaDispenserLantai2;
                        });
                        },
                      onTapFunction: (){},
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: MyButtonWidget(
                      padding: EdgeInsets.only(right: 3, bottom: 6),
                      title: 'Rangkaian Lampu',
                      subTitle: 'LG',
                      image: 'lib/assets/Lampu.png',
                      index: semuaLampuLantai2,
                      onSwitchFunction: (){
                        setState(() {
                          semuaLampuLantai2 =! semuaLampuLantai2;
                        });
                        },
                      onTapFunction: (){},
                      ),
                  ),
                  Expanded(
                      child: MyButtonWidget(
                        padding: EdgeInsets.only(left: 3, bottom: 6),
                        title: 'Smart Lock Door',
                        subTitle: 'LG',
                        image: 'lib/assets/Pintu.png',
                        index: semuaPintuLantai2,
                        onSwitchFunction: (){
                          setState(() {
                            semuaPintuLantai2 =! semuaPintuLantai2;
                          });
                          },
                        onTapFunction: (){},
                      ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  MyButtonWidget(
                    padding: EdgeInsets.only(right: 3, bottom: 6),
                    title: 'Televisi',
                    subTitle: 'LG',
                    image: 'lib/assets/Tv.png',
                    index: semuaTvLantai2,
                    onSwitchFunction: (){
                      setState(() {
                        semuaTvLantai2 =! semuaTvLantai2;
                      });
                      },
                    onTapFunction: (){},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
