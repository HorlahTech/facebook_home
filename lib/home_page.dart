import 'package:facebook_home/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Watch'),
    Text('Marketplace'),
    Text('Notifications'),
    Text('Menu'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.white),
          centerTitle: false,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'facebook',
            ),
          ),
          actions: [
            Column(
              children: [
                Row(
                  children: [
                    CircleButton(
                      icon: Icon(
                        Icons.add,
                        size: 30.sp,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        debugPrint('Searching');
                      },
                    ),
                    CircleButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        debugPrint('Searching');
                      },
                    ),
                    CircleButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black87,
                        ),
                        onPressed: () {
                          debugPrint('Menu....');
                        })
                  ],
                ),
              ],
            )
          ],
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          useLegacyColorScheme: true,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF3b5998),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Groups',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
