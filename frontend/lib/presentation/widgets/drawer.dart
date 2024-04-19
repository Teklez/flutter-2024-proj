import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  final List<List<String>> menuItems;
  const MenuDrawer({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[700],
              ),
              child: const Text('Menu'),
            ),
            ..._buildTile(menuItems, context)
          ],
        ),
      ),
    );
  }

  List<ListTile> _buildTile(menuItems, context) {
    List<ListTile> tiles = [];
    for (var item in menuItems) {
      tiles.add(
        ListTile(
          title: Text(item[0]),
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "${item[1]}", (route) => false);
          },
        ),
      );
    }
    return tiles;
  }
}
