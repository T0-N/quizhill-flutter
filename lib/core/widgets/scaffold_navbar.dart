import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldNavbar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldNavbar({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => navigationShell.goBranch(index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dom'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Wyszukaj'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
