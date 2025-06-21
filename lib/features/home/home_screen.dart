import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home Screen")),
    Center(child: Text("Profile Screen")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onMiddleButtonTapped() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Scan Action"),
        content: Text("This is where scanner opens."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: _onMiddleButtonTapped,
        backgroundColor: Color(0xFF5F259F), // PhonePe purple
        child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        elevation: 10,
        shape: CircularNotchedRectangle(),
        notchMargin: 0,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Color(
            0xFF5F259F,
          ), // Active tab color (PhonePe purple)
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
