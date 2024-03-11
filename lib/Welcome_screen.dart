import 'package:dr_saheb_app/onboding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF6FF),
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: Center(
      //     child: const Text(
      //       "Categories",
      //       style: TextStyle(
      //           fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      //     ),
      //   ),
      //   actions: <Widget>[
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => OnbodingScreen(),
      //             ));
      //       },
      //       child: Text(
      //         "Skip",
      //         style: TextStyle(
      //             fontSize: 14,
      //             fontWeight: FontWeight.w500,
      //             color: Colors.blue),
      //       ),
      //     ),
      //     SizedBox(width: 30),
      //   ],
      //   backgroundColor: Color(0xFFEBF6FF),
      //   elevation: 40.0,
      //   leading: IconButton(
      //     icon: const Icon(
      //       Icons.arrow_back,
      //       size: 30.0,
      //     ),
      //     color: Colors.blue,
      //     onPressed: () {
      //       // Navigate back when the back button is pressed
      //       Navigator.of(context).pop();
      //     },
      //   ),
      //   systemOverlayStyle: SystemUiOverlayStyle.light,
      // ),
      body: Form(
          key: _formKey,
          child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, bottom: 20, top: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What do you want to\nconsult you like",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           MyNavigationBar(),
                                      //     ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff0087FF),
                                        fixedSize: const Size(89, 73),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Image.asset(
                                      "lib/assets/images/Ear.png",
                                      height: 45,
                                      width: 46,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           MyNavigationBar(),
                                      //     ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD9D9D9),
                                        fixedSize: const Size(96, 73),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Image.asset(
                                      "lib/assets/images/brain.png",
                                      height: 55,
                                      width: 36,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffD9D9D9),
                                          fixedSize: const Size(130, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/kedney.png",
                                        height: 55,
                                        width: 46,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD9D9D9),
                                        fixedSize: const Size(89, 73),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      child: Image.asset(
                                        "lib/assets/images/heart.png",
                                        height: 45,
                                        width: 56,
                                      )),
                                ],
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           MyNavigationBar(),
                                      //     ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD9D9D9),
                                        fixedSize: const Size(96, 73),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Image.asset(
                                      "lib/assets/images/teeth.png",
                                      height: 55,
                                      width: 36,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff0087FF),
                                          fixedSize: const Size(130, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/hair.png",
                                        height: 55,
                                        width: 46,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff0087FF),
                                          fixedSize: const Size(170, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/stomch.png",
                                        height: 45,
                                        width: 46,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           MyNavigationBar(),
                                      //     ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD9D9D9),
                                        fixedSize: const Size(96, 73),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Image.asset(
                                      "lib/assets/images/eye.png",
                                      height: 35,
                                      width: 56,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffD9D9D9),
                                          fixedSize: const Size(110, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/lungs.png",
                                        height: 50,
                                        width: 56,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffD9D9D9),
                                          fixedSize: const Size(89, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/heart.png",
                                        height: 45,
                                        width: 46,
                                      )),
                                ],
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           MyNavigationBar(),
                                      //     ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD9D9D9),
                                        fixedSize: const Size(96, 73),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Image.asset(
                                      "lib/assets/images/teeth.png",
                                      height: 55,
                                      width: 36,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff0087FF),
                                          fixedSize: const Size(130, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/hair.png",
                                        height: 55,
                                        width: 46,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff0087FF),
                                          fixedSize: const Size(170, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/stomch.png",
                                        height: 45,
                                        width: 46,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           MyNavigationBar(),
                                      //     ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD9D9D9),
                                        fixedSize: const Size(96, 73),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Image.asset(
                                      "lib/assets/images/eye.png",
                                      height: 35,
                                      width: 56,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffD9D9D9),
                                          fixedSize: const Size(110, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/lungs.png",
                                        height: 50,
                                        width: 56,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffD9D9D9),
                                          fixedSize: const Size(89, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/heart.png",
                                        height: 45,
                                        width: 46,
                                      )),
                                ],
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           MyNavigationBar(),
                                      //     ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xffD9D9D9),
                                        fixedSize: const Size(96, 73),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: Image.asset(
                                      "lib/assets/images/teeth.png",
                                      height: 55,
                                      width: 36,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           MyNavigationBar(),
                                        //     ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff0087FF),
                                          fixedSize: const Size(130, 73),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Image.asset(
                                        "lib/assets/images/hair.png",
                                        height: 55,
                                        width: 46,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //           builder: (context) => OnbodingScreen(),
                        //         ));
                        //   },
                        //   child: Image.asset(
                        //     "lib/assets/images/next.png",
                        //     height: 130,
                        //     width: 130,
                        //   ),
                        // ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OnbodingScreen(),
                                  ));
                            },
                            child: Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(25),
                              backgroundColor: Color(0xff0087FF),
                            ),
                          ),
                        ),
                      ])))),
    );
  }
}
