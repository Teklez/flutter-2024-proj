import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:review/components/rating.dart';
import 'package:review/components/rating_Progress_Indicator.dart';
import 'package:review/components/user_review_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review',
      debugShowCheckedModeBanner: false,
      home: Review(),
    );
  }
}

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Reviews & Ratings",
            style: TextStyle(color: Colors.grey[300]),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey[200],
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(
                'assets/logo.jpg',
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
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
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Ratings and reviews are verified and are from people who use the same type of device that you use.",
                        style: TextStyle(color: Colors.grey[200]),
                      ),
                      SizedBox(height: 20),
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
                          Expanded(
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
                      RatingStar(),
                      Text(
                        "12,345",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[200]),
                      ),
                      SizedBox(
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
          padding: EdgeInsets.all(5),
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
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                )),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
