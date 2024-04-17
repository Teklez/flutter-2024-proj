import 'package:flutter/material.dart';
import 'package:frontend/presentation/screens/game_add.dart';

class EditDeleteDialogue extends StatelessWidget {
  const EditDeleteDialogue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.edit),
              Text("EDIT"),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddGameForm(buttonName: "Edit"),
              ),
            );
          }, // menu setting
        ),
        const PopupMenuItem(
          value: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.delete, color: Colors.redAccent),
              Text("DELETE"),
            ],
          ), // menu setting
        ),
      ],
    );
  }
}

class Menu extends StatelessWidget {
  final List<List<String>> names;
  const Menu({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: const Icon(Icons.menu),
      itemBuilder: (context) => _buildMenu(names, context),
    );
  }
}

List<PopupMenuItem> _buildMenu(names, context) {
  final List<PopupMenuItem<int>> popupMenus = [];
  for (int i = 0; i < names.length; i++) {
    var item = PopupMenuItem(
      value: i,
      child: Text(names[i][0]),
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
            context, "${names[i][1]}", (route) => false);
      },
    );
    popupMenus.add(item);
  }
  return popupMenus;
}
