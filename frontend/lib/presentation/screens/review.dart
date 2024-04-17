import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/presentation/widgets/rating.dart';
import 'package:frontend/presentation/widgets/rating_Progress_Indicator.dart';
import 'package:frontend/presentation/widgets/user_review_card.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

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
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 14 / 14,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  "assets/logo.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
        title: const Text("Reviews & Ratings"),
      ),
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7),
              BlendMode.dstATop,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/RussianRoulette.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Ratings and reviews are verified and are from people who use the same type of device that you use.",
                        style: TextStyle(color: Colors.grey[200]),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                              "4.8",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[350]),
                            ),
                          ),
                          const Expanded(
                            flex: 7,
                            child: Column(
                              children: [
                                RatingProgressIndicator(
                                  text: "5",
                                  value: 1.0,
                                ),
                                RatingProgressIndicator(
                                  text: "4",
                                  value: 0.8,
                                ),
                                RatingProgressIndicator(
                                  text: "3",
                                  value: 0.6,
                                ),
                                RatingProgressIndicator(
                                  text: "2",
                                  value: 0.4,
                                ),
                                RatingProgressIndicator(
                                  text: "1",
                                  value: 0.8,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const RatingStar(),
                      Text(
                        "12,345",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[200]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      UserReview(),
                      UserReview(),
                      UserReview(),
                    ])),
          ),
        ]),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                    decoration: InputDecoration(
                  labelText: "Write your review here...",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                )),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
