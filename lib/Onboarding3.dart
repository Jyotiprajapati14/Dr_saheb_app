import 'package:dr_saheb_app/Login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Onboarding3Screen extends StatefulWidget {
  const Onboarding3Screen({super.key});

  @override
  State<Onboarding3Screen> createState() => _Onboarding3ScreenState();
}

class _Onboarding3ScreenState extends State<Onboarding3Screen> {
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
                    builder: (context) => LoginScreen(),
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
            padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "lib/assets/images/point.png",
                    height: 165,
                    width: 158,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Book face-to face\nappointments",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF)),
                ),
                SizedBox(height: 30),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry's standard dummy text ever since",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF)),
                ),
                SizedBox(height: 120),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Image.asset(
                    "lib/assets/images/dupp.png",
                    height: 130,
                    width: 130,
                  ),
                ),
                // Center(
                //   child: ElevatedButton(
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => LoginScreen()));
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
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
