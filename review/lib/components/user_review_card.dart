import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:readmore/readmore.dart';
import 'package:review/components/edit_delete_review.dart';
import 'package:review/components/rating.dart';

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
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/profile2.jpg"),
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Hanna A. ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[350])),
              ],
            ),
            IconButton(
                onPressed: () {
                  showPopover(
                      context: context,
                      bodyBuilder: (context) => MenuItems(),
                      width: 250,
                      height: 150,
                      backgroundColor: Colors.white.withOpacity(0.2),
                      direction: PopoverDirection.top);
                },
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey[200],
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            RatingStar(),
            SizedBox(
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
        SizedBox(
          height: 10,
        ),
        ReadMoreText(
          'The user interface of the app is quite intuitive, I was able to navigate and make play seamlesssly. Great job! ',
          trimLines: 1,
          style: TextStyle(color: Colors.grey[50]),
          trimMode: TrimMode.Line,
          trimExpandedText: "show less",
          trimCollapsedText: "show more",
          moreStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
          lessStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
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
                SizedBox(
                  height: 10,
                ),
                ReadMoreText(
                  'The user interface of the app is quite intuitive, I was able to navigate and make play seamlesssly. Great job! ',
                  trimLines: 1,
                  style: TextStyle(color: Colors.grey[200]),
                  trimMode: TrimMode.Line,
                  trimExpandedText: "show less",
                  trimCollapsedText: "show more",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
