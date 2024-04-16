import 'package:flutter/material.dart';

class Edit_Delete_PopUps extends StatelessWidget {
  const Edit_Delete_PopUps({
    Key? key,
  }) : super(key: key);

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
                child: const Text("Edit"),
              ),
            ],
          ),
          onTap: () async {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Edit'),
            ));
          },
        ),
        PopupMenuItem(
          child: Row(
            children: [
              const Icon(Icons.delete, color: Colors.white),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text("Delete"),
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
