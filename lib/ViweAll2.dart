import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AvailableScreen extends StatefulWidget {
  const AvailableScreen({super.key});

  @override
  State<AvailableScreen> createState() => _AvailableScreenState();
}

class _AvailableScreenState extends State<AvailableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF6FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Medical Specialties",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        actions: <Widget>[],
        backgroundColor: Color(0xffEBF6FF),
        elevation: 40.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30.0,
          ),
          color: Colors.blue,
          onPressed: () {
            // Navigate back when the back button is pressed
            Navigator.of(context).pop();
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 8),
                  Image.asset("lib/assets/images/searching.png"),
                  SizedBox(width: 12),
                  Container(
                    height: 44,
                    width: 1.5,
                    color: Colors.black,
                  ),
                ],
              ),
              filled: true,
              fillColor: Color(0xffD9D9D9),
              hintText: "  Search For Doctor Name ",
              hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                  ),
              contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Color(0xff0087FF)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Color(0xff0087FF)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(color: Color(0xff0087FF)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Column(children: <Widget>[
            SizedBox(
              height: 160,
              // width: 490,
              child: Card(
                shadowColor: Color(0xffD4D4D4),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/kupp.png",
                                      height: 75,
                                      width: 75,
                                    ),
                                    // CircleAvatar(
                                    //     backgroundColor: Colors.amber,
                                    //     radius: 33,
                                    //     child: Image.asset(
                                    //       "lib/assets/images/dro.png",
                                    //       height: 50,
                                    //       width: 50,
                                    //     ) //Text
                                    //     ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Dr. Maria Lexa",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 20),
                            child: Container(
                              child: RatingBar.builder(
                                initialRating: 0,
                                minRating: 0,
                                updateOnDrag: false,
                                glow: false,
                                itemCount: 1,
                                itemSize: 25,
                                allowHalfRating: false,
                                itemBuilder: (context, _) => Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (rating) {
                                  // Handle the rating update here
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "General Physician",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Text(
                        "Southern California Hospital",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 4),
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              updateOnDrag: false,
                              glow: false,
                              itemCount: 1,
                              itemSize: 25,
                              allowHalfRating: false,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                // Handle the rating update here
                              },
                            ),
                            Text(
                              "4.5(500+Ratings)",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            // SizedBox(width: 140),
                            Spacer(),
                            Icon(
                              Icons.watch_later,
                              color: Colors.grey,
                            ),
                            Text(
                              "5 Year Exp.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                color: Color(0xffFFFFFF),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(5),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 160,
              // width: 490,
              child: Card(
                shadowColor: Color(0xffD4D4D4),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/domm.png",
                                      height: 75,
                                      width: 75,
                                    ),
                                    // CircleAvatar(
                                    //     backgroundColor: Colors.amber,
                                    //     radius: 33,
                                    //     child: Image.asset(
                                    //       "lib/assets/images/marial.png",
                                    //       height: 50,
                                    //       width: 50,
                                    //     ) //Text
                                    //     ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Dr. Maria Lexa",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 20),
                            child: Container(
                              child: RatingBar.builder(
                                initialRating: 0,
                                minRating: 0,
                                updateOnDrag: false,
                                glow: false,
                                itemCount: 1,
                                itemSize: 25,
                                allowHalfRating: false,
                                itemBuilder: (context, _) => Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (rating) {
                                  // Handle the rating update here
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "General Physician",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Text(
                        "Southern California Hospital",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 4),
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              updateOnDrag: false,
                              glow: false,
                              itemCount: 1,
                              itemSize: 25,
                              allowHalfRating: false,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                // Handle the rating update here
                              },
                            ),
                            Text(
                              "4.5(500+Ratings)",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            // SizedBox(width: 140),
                            Spacer(),
                            Icon(
                              Icons.watch_later,
                              color: Colors.grey,
                            ),
                            Text(
                              "5 Year Exp.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                color: Color(0xffFFFFFF),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(5),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 160,
              // width: 490,
              child: Card(
                shadowColor: Color(0xffD4D4D4),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/domm.png",
                                      height: 75,
                                      width: 75,
                                    ),
                                    // CircleAvatar(
                                    //     backgroundColor: Colors.amber,
                                    //     radius: 33,
                                    //     child: Image.asset(
                                    //       "lib/assets/images/lexa.png",
                                    //       height: 50,
                                    //       width: 50,
                                    //     ) //Text
                                    //     ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Dr. Maria Lexa",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 20),
                            child: Container(
                              child: RatingBar.builder(
                                initialRating: 0,
                                minRating: 0,
                                updateOnDrag: false,
                                glow: false,
                                itemCount: 1,
                                itemSize: 25,
                                allowHalfRating: false,
                                itemBuilder: (context, _) => Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (rating) {
                                  // Handle the rating update here
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "General Physician",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Text(
                        "Southern California Hospital",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 4),
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              updateOnDrag: false,
                              glow: false,
                              itemCount: 1,
                              itemSize: 25,
                              allowHalfRating: false,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                // Handle the rating update here
                              },
                            ),
                            Text(
                              "4.5(500+Ratings)",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            // SizedBox(width: 140),
                            Spacer(),
                            Icon(
                              Icons.watch_later,
                              color: Colors.grey,
                            ),
                            Text(
                              "5 Year Exp.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                color: Color(0xffFFFFFF),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(5),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 160,
              // width: 490,
              child: Card(
                shadowColor: Color(0xffD4D4D4),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/kupp.png",
                                      height: 75,
                                      width: 75,
                                    ),
                                    // CircleAvatar(
                                    //     backgroundColor: Colors.amber,
                                    //     radius: 33,
                                    //     child: Image.asset(
                                    //       "lib/assets/images/lexa.png",
                                    //       height: 50,
                                    //       width: 50,
                                    //     ) //Text
                                    //     ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Dr. Maria Lexa",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 20),
                            child: Container(
                              child: RatingBar.builder(
                                initialRating: 0,
                                minRating: 0,
                                updateOnDrag: false,
                                glow: false,
                                itemCount: 1,
                                itemSize: 25,
                                allowHalfRating: false,
                                itemBuilder: (context, _) => Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (rating) {
                                  // Handle the rating update here
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "General Physician",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Text(
                        "Southern California Hospital",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 4),
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              updateOnDrag: false,
                              glow: false,
                              itemCount: 1,
                              itemSize: 25,
                              allowHalfRating: false,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                // Handle the rating update here
                              },
                            ),
                            Text(
                              "4.5(500+Ratings)",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            // SizedBox(width: 140),
                            Spacer(),
                            Icon(
                              Icons.watch_later,
                              color: Colors.grey,
                            ),
                            Text(
                              "5 Year Exp.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                color: Color(0xffFFFFFF),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(5),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 160,
              // width: 490,
              child: Card(
                shadowColor: Color(0xffD4D4D4),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/domm.png",
                                      height: 75,
                                      width: 75,
                                    ),
                                    // CircleAvatar(
                                    //     backgroundColor: Colors.amber,
                                    //     radius: 33,
                                    //     child: Image.asset(
                                    //       "lib/assets/images/lexa.png",
                                    //       height: 50,
                                    //       width: 50,
                                    //     ) //Text
                                    //     ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Dr. Maria Lexa",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 20),
                            child: Container(
                              child: RatingBar.builder(
                                initialRating: 0,
                                minRating: 0,
                                updateOnDrag: false,
                                glow: false,
                                itemCount: 1,
                                itemSize: 25,
                                allowHalfRating: false,
                                itemBuilder: (context, _) => Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (rating) {
                                  // Handle the rating update here
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "General Physician",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Text(
                        "Southern California Hospital",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 4),
                        child: Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              updateOnDrag: false,
                              glow: false,
                              itemCount: 1,
                              itemSize: 25,
                              allowHalfRating: false,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                // Handle the rating update here
                              },
                            ),
                            Text(
                              "4.5(500+Ratings)",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            // SizedBox(width: 140),
                            Spacer(),
                            Icon(
                              Icons.watch_later,
                              color: Colors.grey,
                            ),
                            Text(
                              "5 Year Exp.",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                color: Color(0xffFFFFFF),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(5),
              ),
            ),
            SizedBox(height: 10),
          ])
        ]),
      )),
    );
  }
}
