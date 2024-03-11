import 'package:carousel_slider/carousel_slider.dart';
import 'package:dr_saheb_app/Menu_page.dart';
import 'package:dr_saheb_app/Notificatin_page.dart';
import 'package:dr_saheb_app/ViweAll2.dart';
import 'package:dr_saheb_app/View_All.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEBF6FF),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xffEBF6FF),
          title: Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationPage(),
                    ),
                  );
                },
                child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    child: Image.asset(
                      "lib/assets/images/Icons.png",
                      height: 25,
                      width: 25,
                    ) //Text
                    ),
              ),
            ],
          ),
          leading: Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ),
                  );
                },
                child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    child: Image.asset(
                      "lib/assets/images/mori.png",
                      height: 25,
                      width: 25,
                    ) //Text
                    ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff0087FF),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Consult Doctors",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Get Expert Advice From\nSpecialist Doctors.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                              height: 140,
                              width: 95,
                              child:
                                  Image.asset("lib/assets/images/dector.png")),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 140,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 18 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 900),
                    viewportFraction: 0.8,
                  ),
                ),
                // SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Medical Specialties",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewAllScreen(),
                            ),
                          );
                        },
                        child: Text(
                          " View All",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0F5BD0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      Stack(children: []),
                      Column(
                        children: [
                          // Image.asset("lib/assets/images/domm.png"),
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/pregnancy.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Women’s\nHealth",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/skincare.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Skins\n& Hairs",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/mother.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Childs\nSpecialist",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/stetho.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "General\nPhysician",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/sexology.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Sexology\nSpecialist",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Available Doctors",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AvailableScreen(),
                            ),
                          );
                        },
                        child: Text(
                          " View All",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0F5BD0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //SizedBox(height: 20),
                Column(children: <Widget>[
                  SizedBox(
                    height: 160,
                    // width: 490,
                    child: Card(
                      shadowColor: Color(0xffD4D4D4),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 20),
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
                                  padding: const EdgeInsets.only(
                                      bottom: 10, right: 20),
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
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 8),
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
                  SizedBox(height: 20),
                  SizedBox(
                    height: 160,
                    // width: 490,
                    child: Card(
                      shadowColor: Color(0xffD4D4D4),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 5),
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
                                            "lib/assets/images/ammp.png",
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
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 20),
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
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 4),
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
                  SizedBox(height: 20),
                  SizedBox(
                    height: 160,
                    // width: 490,
                    child: Card(
                      shadowColor: Color(0xffD4D4D4),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 5),
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
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 20),
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
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 4),
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
                  SizedBox(height: 20),
                ])
              ])),
        )));
  }
}
