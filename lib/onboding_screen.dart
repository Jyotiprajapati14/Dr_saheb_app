import 'package:dr_saheb_app/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnbodingScreen extends StatefulWidget {
  const OnbodingScreen({super.key});

  @override
  State<OnbodingScreen> createState() => _OnbodingScreenState();
}

class _OnbodingScreenState extends State<OnbodingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0087FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        //title: Center(),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Onboding2Screen(),
                  ));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          SizedBox(width: 40),
        ],
        backgroundColor: Color(0xFF0087FF),
        elevation: 40.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30.0,
          ),
          color: Colors.white,
          onPressed: () {
            // Navigate back when the back button is pressed
            Navigator.of(context).pop();
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Form(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset("lib/assets/images/circle.png"),
                    // child: CircleAvatar(
                    //   //border
                    //   radius: 100,
                    //   backgroundColor: Colors.black,
                    //   child: CircleAvatar(
                    //     backgroundColor: Colors.grey,
                    //     radius: 90,
                    //     child: CircleAvatar(
                    //         backgroundColor: Colors.white,
                    //         radius: 80,
                    //         child: Image.asset(
                    //           "lib/assets/images/dr.png",
                    //           height: 142,
                    //           width: 142,
                    //         ) //Text
                    //         ),
                    //   ),
                    // ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Find the best doctor in\n   your vicinity",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        color: Color(0XffFFFFFF)),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0XffFFFFFF)),
                  ),
                  SizedBox(height: 80),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Onboding2Screen(),
                          ));
                    },
                    child: Image.asset(
                      "lib/assets/images/next.png",
                      height: 130,
                      width: 130,
                    ),
                  ),
                  // Center(
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => Onboding2Screen(),
                  //           ));
                  //     },
                  //     child: Image.asset(
                  //       "lib/assets/images/next.png",
                  //       height: 60,
                  //       width: 40,
                  //     ),
                  //     // Icon(
                  //     //   Icons.arrow_right_alt,
                  //     //   color: Colors.black,
                  //     // ),
                  //     // style: ElevatedButton.styleFrom(
                  //     //     // shape: CircleBorder(),
                  //     //     // padding: EdgeInsets.all(25),
                  //     //     // backgroundColor: Color(0xffD9D9D9),
                  //     //     ),
                  //   ),
                  // ),
                ]),
          ),
        ),
      ),
    );
  }
}
