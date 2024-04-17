import 'package:flutter/material.dart';

class AddGameForm extends StatelessWidget {
  final String buttonName;
  const AddGameForm({Key? key, required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: const Text("BetEbet"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _AddGameForm(context, buttonName),
        ),
      ),
    );
  }

  _AddGameForm(context, buttonName) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Image URL",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Name",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Description",
            border: OutlineInputBorder(),
          ),
          maxLines: 5,
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Publisher",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/admin', (route) => false);
                // Cancel action
                print('Cancel');
              },
              child: const Text('Cancel'),
            ),
            const SizedBox(width: 10.0), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/admin', (route) => false);
                // Add action
                print('Add');
              },
              child: Text(buttonName),
            ),
          ],
        ),
      ],
    );
  }
}
