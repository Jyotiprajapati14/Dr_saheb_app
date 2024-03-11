import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Onboarding3.dart';

class Onboding2Screen extends StatefulWidget {
  const Onboding2Screen({super.key});

  @override
  State<Onboding2Screen> createState() => _Onboding2ScreenState();
}

class _Onboding2ScreenState extends State<Onboding2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0087FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Onboarding3Screen(),
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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "lib/assets/images/drmm.png",
                  height: 176,
                  width: 173,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Schedule appointments\n  with expert doctors",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF)),
              ),
              SizedBox(height: 30),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry's standard dummy text ever since",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
              SizedBox(height: 160),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Onboarding3Screen(),
                      ));
                },
                child: Image.asset(
                  "lib/assets/images/dumm.png",
                  height: 130,
                  width: 130,
                ),
              ),
              // Center(
              //   child: ElevatedButton(
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => Onboarding3Screen()),
              //         );
              //       },
              //       child: Icon(
              //         Icons.arrow_right_alt,
              //         color: Colors.black,
              //       ),
              //       style: ElevatedButton.styleFrom(
              //         shape: CircleBorder(),
              //         padding: EdgeInsets.all(25),
              //         backgroundColor: Color(0xffD9D9D9),
              //       )),
              // ),
            ],
          ),
        )),
      ),
    );
  }
}
