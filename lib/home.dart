import 'package:flutter/material.dart';

import 'Halaman1.dart';
import 'Halaman2.dart';
import 'Halaman3.dart';
import 'login.dart';
import 'cetekan.dart';
import 'basement.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int Navbar = 0;

  List<Widget> pageList = [
    Halaman2(),
    Halaman1(),
    halaman3(),
    tugas(),
    basement(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList.elementAt(Navbar),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            Navbar = index;
          });
        },
        currentIndex: Navbar,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chair),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.park),
            label: 'Yard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.microwave),
            label: 'Kitchen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.android),
            label: 'Tugas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.door_back_door_sharp),
            label: 'Basement',
          ),
        ],
      ),
    );
  }
}
