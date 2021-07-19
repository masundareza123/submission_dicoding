import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_dicoding/widgets/button_widget.dart';

class Lantai1View extends StatefulWidget {

  @override
  _Lantai1ViewState createState() => _Lantai1ViewState();
}

class _Lantai1ViewState extends State<Lantai1View> {
  bool semuaAcLantai1 = false;
  bool semuaDispenserLantai1 = false;
  bool semuaKulkasLantai1 = false;
  bool semuaLampuLantai1 = false;
  bool semuaMesinCuciLantai1 = false;
  bool semuaPintuLantai1 = false;
  bool semuaTvLantai1 = false;
  bool semuaWifiLantai1 = false;


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
                        index: semuaAcLantai1,
                        onSwitchFunction: (){
                          setState(() {
                            semuaAcLantai1 =! semuaAcLantai1;
                          });
                          },
                        onTapFunction: (){},
                      )
                  ),
                  Expanded(
                      child: MyButtonWidget(
                        padding: EdgeInsets.only(left: 3, bottom: 6),
                        title: 'Dispenser Air',
                        subTitle: 'LG',
                        image: 'lib/assets/Dispenser.png',
                        index: semuaDispenserLantai1,
                        onSwitchFunction: (){
                          setState(() {
                            semuaDispenserLantai1 =! semuaDispenserLantai1;
                          });
                          },
                        onTapFunction: (){},
                      )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: MyButtonWidget(
                        padding: EdgeInsets.only(right: 3, bottom: 6),
                        title: 'Lemari Pendingin',
                        subTitle: 'LG',
                        image: 'lib/assets/Kulkas.png',
                        index: semuaKulkasLantai1,
                        onSwitchFunction: (){
                          setState(() {
                            semuaKulkasLantai1 =! semuaKulkasLantai1;
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
                        index: semuaLampuLantai1,
                        onSwitchFunction: (){
                          setState(() {
                            semuaLampuLantai1 =! semuaLampuLantai1;
                          });
                          },
                        onTapFunction: (){},
                      )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: MyButtonWidget(
                        padding: EdgeInsets.only(right: 3, bottom: 6),
                        title: 'Mesin Cuci',
                        subTitle: 'LG',
                        image: 'lib/assets/MesinCuci.png',
                        index: semuaMesinCuciLantai1,
                        onSwitchFunction: (){
                          setState(() {
                            semuaMesinCuciLantai1 =! semuaMesinCuciLantai1;
                          });
                          },
                        onTapFunction: (){},
                      )
                  ),
                  Expanded(
                      child: MyButtonWidget(
                        padding: EdgeInsets.only(left: 3, bottom: 6),
                        title: 'Smart Lock Door',
                        subTitle: 'LG',
                        image: 'lib/assets/Pintu.png',
                        index: semuaPintuLantai1,
                        onSwitchFunction: (){
                          setState(() {
                            semuaPintuLantai1 =! semuaPintuLantai1;
                          });
                          },
                        onTapFunction: (){},
                      )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: MyButtonWidget(
                          padding: EdgeInsets.only(right: 3, bottom: 6),
                        title: 'Televisi',
                        subTitle: 'LG',
                        image: 'lib/assets/Tv.png',
                        index: semuaTvLantai1,
                        onSwitchFunction: (){
                            setState(() {
                              semuaTvLantai1 =! semuaTvLantai1;
                            });
                            },
                        onTapFunction: (){},
                      )
                  ),
                  Expanded(
                      child: MyButtonWidget(
                        padding: EdgeInsets.only(left: 3, bottom: 6),
                        title: 'Wifi',
                        subTitle: 'LG',
                        image: 'lib/assets/Wifi.png',
                        index: semuaWifiLantai1,
                        onSwitchFunction: (){
                          setState(() {
                            semuaWifiLantai1 =! semuaWifiLantai1;
                          });
                          },
                        onTapFunction: (){},
                      )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
