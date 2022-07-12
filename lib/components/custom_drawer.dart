import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          const DrawerHeader(
            child: Text('FFXIV Opener'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text('Rotations'),
            onTap: () {
              Navigator.pushNamed(context, '/rotations');
            },
          ),
        ],
      ),
    );
  }
}
