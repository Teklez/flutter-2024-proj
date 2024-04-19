import 'package:flutter/material.dart';
import 'package:frontend/presentation/widgets/user_review_card.dart';

class Edit_Delete_PopUps extends StatelessWidget {
  final String text1;
  final String text2;
  const Edit_Delete_PopUps(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      offset: const Offset(0, 40),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Row(
            children: [
              const Icon(Icons.edit, color: Colors.white),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(text1),
              ),
            ],
          ),
          onTap: () async {
            Navigator.pushNamed(context, "/review_edit");
          },
        ),
        PopupMenuItem(
          child: Row(
            children: [
              const Icon(Icons.delete, color: Colors.white),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(text2),
              ),
            ],
          ),
          onTap: () async {
            bool confirmDelete = await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Confirm Delete"),
                  content: Text("Are you sure you want to delete this review?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Text("Delete"),
                    ),
                  ],
                );
              },
            );

            if (confirmDelete == true) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Deleting...'),
              ));
            }
          },
        ),
      ],
    );
  }
}
