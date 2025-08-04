import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:filmiko/Screen/Screen.dart';
import 'package:flutter/material.dart';
export 'package:filmiko/Screen/Screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 1;

  final List<Widget> _pages = [FavoriteScreen(), HomeScreen(), ProfileScreen()];
  final List<Widget> _icons = [
    Icon(Icons.favorite, color: Colors.white, size: 30),
    Icon(Icons.home, color: Colors.white, size: 30),
    Icon(Icons.person, color: Colors.white, size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_page],
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        animationDuration: Duration(milliseconds: 300),
        color: Colors.blue.shade900,
        backgroundColor: Colors.transparent,
        items: _icons,
        index: _page,
        onTap: (value) {
          setState(() {
            _page = value;
          });
        },
      ),
    );
  }
}
