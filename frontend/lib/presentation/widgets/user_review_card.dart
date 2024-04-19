import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/widgets/edit_delete_review.dart';
import 'package:frontend/presentation/widgets/rating.dart';

import 'package:readmore/readmore.dart';

class UserReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/profile2.jpg"),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text("Hanna A. ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[350])),
              ],
            ),
            Edit_Delete_PopUps(
              text1: "Edit",
              text2: "Delete",
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const RatingStar(),
            const SizedBox(
              width: 10,
            ),
            Text(
              "1 April 2024",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[350],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const ReadMoreText(
          'The user interface of the app is quite intuitive, I was able to navigate and make play seamlesssly. Great job! ',
          trimLines: 5,
          style: const TextStyle(color: Colors.white),
          trimMode: TrimMode.Line,
          trimExpandedText: "show less",
          trimCollapsedText: "show more",
          moreStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
          lessStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[800]!.withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "BetEbet",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[300]),
                    ),
                    Text(
                      "12 April 2024",
                      style: TextStyle(fontSize: 16, color: Colors.grey[200]),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ReadMoreText(
                  'The user interface of the app is quite intuitive, I was able to navigate and make play seamlesssly. Great job! ',
                  trimLines: 5,
                  style: TextStyle(color: Colors.grey[200]),
                  trimMode: TrimMode.Line,
                  trimExpandedText: "show less",
                  trimCollapsedText: "show more",
                  moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                  lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
