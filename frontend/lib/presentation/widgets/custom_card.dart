import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      color: Colors.orangeAccent,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'your_image_path.jpg',
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      child: Text('Play'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {
                      // Handle
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
