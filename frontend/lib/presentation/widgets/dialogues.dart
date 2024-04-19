import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/presentation/screens/game_add.dart';

// EDIT DELETE DIALOGUE
// This dialogue is used to edit or delete a game. It is used in the AdminGameCard widget.

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
        PopupMenuItem(
          value: 2,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.delete, color: Colors.redAccent),
              Text("DELETE"),
            ],
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => const AreYouSureDialogue(),
            );
          }, // menu setting
        ),
      ],
    );
  }
}

// MENU
// This widget is used to create a menu with a list of items. It is used in the AdminPage and user home widget.
class Menu extends StatelessWidget {
  final List<List<String>> names;
  const Menu({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        clipBehavior: Clip.none,
        position: PopupMenuPosition.under,
        child: const Icon(Icons.menu),
        itemBuilder: (context) => _buildMenu(names, context),
        color: Colors.black,
      ),
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
// BLOCK ROLE
// This widget is used to block a user or change their role. It is used in the UsersPage widget.

class BlockRole extends StatelessWidget {
  const BlockRole({super.key});

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
              Icon(Icons.block),
              Text("BLOCK           "),
            ],
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => const AreYouSureDialogue(),
            );
          },
        ),
        const PopupMenuItem(
          value: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.change_circle),
              Text("CHANGE ROLE"),
            ],
          ),
        ),
      ],
    );
  }
}

// ARE YOU SURE DIALOGUE
// This dialogue is used to confirm if the user is sure of the action they are about to take.

class AreYouSureDialogue extends StatelessWidget {
  const AreYouSureDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Are you sure?"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}
