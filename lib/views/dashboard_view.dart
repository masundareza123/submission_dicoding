import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:submission_dicoding/views/home_view.dart';
import 'package:submission_dicoding/views/news_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key, key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeView(),
    HomeNewsView(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: PageStorage(
              child: currentScreen,
              bucket: bucket,
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(FontAwesomeIcons.qrcode),
              backgroundColor: Colors.cyan[400],
              onPressed: (){},
            ),
            floatingActionButtonLocation : FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 4.0,
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: (){
                            setState(() {
                              currentScreen = HomeView();
                              currentTab = 0;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.home_outlined,
                                color: currentTab == 0 ? Colors.cyan[400] : Colors.black26,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                  color: currentTab == 0 ? Colors.cyan[400] : Colors.black26,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: (){
                            setState(() {
                              currentScreen = HomeNewsView();
                              currentTab = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.article_outlined,
                                color: currentTab == 1 ? Colors.cyan[400] : Colors.black26,
                              ),
                              Text(
                                "News",
                                style: TextStyle(
                                  color: currentTab == 1 ? Colors.cyan[400] : Colors.black26,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            )
        )
    );
  }
}
