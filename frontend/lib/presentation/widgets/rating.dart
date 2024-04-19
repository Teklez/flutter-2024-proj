import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.star,
          color: Colors.blue,
        ),
        Icon(
          Icons.star,
          color: Colors.blue,
        ),
        Icon(
          Icons.star,
          color: Colors.blue,
        ),
        Icon(Icons.star),
        Icon(Icons.star),
      ],
    );
  }
}
