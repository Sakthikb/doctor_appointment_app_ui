import 'package:flutter/material.dart';
import 'package:doctor_appointment_app_ui/profilescreen.dart';
import 'Homepage.dart';
import 'bookingpage.dart';
import 'chatlist.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  late List pages;
  @override
  void initState() {
    super.initState();
    pages = [
      HomePageScreen(),
      BookingScreen(),
      ChatlistScreen(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontSize: 15),
          unselectedLabelStyle: TextStyle(fontSize: 15),
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 20),
          unselectedIconTheme: IconThemeData(size: 20),
          unselectedItemColor: Colors.white54,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          elevation: 10,
          onTap: (num) {
            setState(() {
              currentIndex = num;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_outlined), label: "Bookings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ));
  }
}
