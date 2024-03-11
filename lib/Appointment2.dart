import 'package:dr_saheb_app/Detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Appointment2Screen extends StatefulWidget {
  const Appointment2Screen({super.key});

  @override
  State<Appointment2Screen> createState() => _Appointment2ScreenState();
}

class _Appointment2ScreenState extends State<Appointment2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF6FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Book Appointment",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        backgroundColor: Color(0xFFEBF6FF),
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
      body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 10,
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                  color: Color(0xff0087FF),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0, right: 30.0),
                          child: Stack(children: [
                            Image.asset("lib/assets/images/doctor.png"),
                          ]),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 30,
                                left: 15,
                                top: 5,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Dr. Maria Lexa",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 15, top: 5.0, bottom: 4.0),
                              child: Row(
                                children: [
                                  Text(
                                    'General Physician',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Southern California Hospital',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Appointment INFO",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    new Container(
                        height: 40,
                        width: 40,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Image.asset("lib/assets/images/tab.png",
                            height: 25, width: 25, color: Color(0xffFFFFFF))),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "12 Feb 2024",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    new Container(
                        height: 40,
                        width: 40,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Image.asset("lib/assets/images/wtch.png",
                            height: 25, width: 25, color: Color(0xffFFFFFF))),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "10:00 AM - 10:00 PM",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    new Container(
                        height: 40,
                        width: 40,
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Image.asset("lib/assets/images/building.png",
                            height: 25, width: 25, color: Color(0xffFFFFFF))),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Office Visit",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Notes",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(height: 10),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.......Read More",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 4),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => MyNavigationBar()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0087FF),
                            fixedSize: const Size(120, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      // SizedBox(width: 140),
                      Spacer(),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPageScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0087FF),
                              fixedSize: const Size(120, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Text(
                            'Fees 250',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
    );
  }
}
