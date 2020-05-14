import 'package:flutter/material.dart';
import './custom_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomWidget(),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 32, left: 72, right: 72),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.contacts,
                      color: Color.fromRGBO(251, 93, 100, 1),
                    ),
                    title: Text(""),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.message,
                      color: Color.fromRGBO(252, 174, 196, 1),
                    ),
                    title: Text(''),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle,
                      color: Color.fromRGBO(252, 174, 196, 1),
                    ),
                    title: Text(''),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
