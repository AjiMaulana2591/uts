import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Fajri'),
            accountEmail: Text('1207070042@student.uinsgd.ac.id'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(),
            ),
          )
        ],
      ),
    );
  }
}
