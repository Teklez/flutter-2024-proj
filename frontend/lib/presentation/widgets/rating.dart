import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
        initialRating: 3,
        itemSize: 20,
        minRating: 1,
        unratedColor: Colors.grey,
        allowHalfRating: true,
        itemCount: 5,
        itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.blue,
              size: 10,
            ),
        onRatingUpdate: (rating) {
          print(rating);
        });
  }
}
