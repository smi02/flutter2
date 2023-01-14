import 'package:flutter/material.dart';
import 'package:flutter2/tabbars/codeqr.dart';
import 'package:flutter2/tabbars/favorite.dart';
import 'package:flutter2/tabbars/homepage.dart';
import 'package:flutter2/tabbars/member.dart';
import 'package:flutter2/tabbars/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final tabBar = [
    HomePage(),
    Search(),
    Favorite(),
    CodeQR(),
    Member()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabBar[_selectedIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          selectedItemColor: Colors.red[400],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.grey,
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Trang chủ",
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Tìm kiếm",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Yêu thích",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_rounded),
              label: "Mã QR",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory_outlined),
              label: "Thành viên",
            ),
          ],
        ),
      ),
    );
  }
}
