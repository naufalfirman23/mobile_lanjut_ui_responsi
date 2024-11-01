import 'package:flutter/material.dart';
import 'package:tugas_responsi/pages/account.dart';
import 'package:tugas_responsi/pages/home.dart';
import 'package:tugas_responsi/pages/splahscreen.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int myIndex = 0;
  List<Widget> widgetList = [
    HomePage(),
    AccountPage(),
    SplashScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myIndex == 1 // Menyembunyikan AppBar di halaman akun
          ? null
          : AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              toolbarHeight: 60,
              leading: Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 10.0),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Aksi ketika ikon notifikasi ditekan
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Aksi ketika ikon pengaturan ditekan
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Akun'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
      ),
      body: Center(
        child: widgetList[myIndex],
      ),
    );
  }
}
