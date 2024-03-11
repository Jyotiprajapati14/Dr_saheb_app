import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileDoneScreen extends StatefulWidget {
  const ProfileDoneScreen({super.key});

  @override
  State<ProfileDoneScreen> createState() => _ProfileDoneScreenState();
}

class _ProfileDoneScreenState extends State<ProfileDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF6FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Your Profile",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
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
      body: Column(
        children: [
          Card(
            elevation: 10,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
            color: const Color(0xff0087FF),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Stack(children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage("lib/assets/images/Ellipse 38.png"),
                      ),
                      // Align(
                      //   widthFactor: 2,
                      //   heightFactor: 4,
                      //   alignment: Alignment.bottomCenter,
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       color: const Color(0xFF5BA084),
                      //     ),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(6.0),
                      //       child: GestureDetector(
                      //           child: GestureDetector(
                      //               onTap: () {
                      //                 // Navigator.push(
                      //                 //   context,
                      //                 //   MaterialPageRoute(
                      //                 //       builder: (context) =>
                      //                 //           EditProfile()),
                      //                 // );
                      //                 // // Get.to(EditProfile());
                      //               },
                      //               child: Padding(
                      //                 padding: const EdgeInsets.only(
                      //                     left: 10.0, right: 10.0),
                      //                 child: const Text(
                      //                   "Edit",
                      //                   style: TextStyle(color: Colors.black),
                      //                 ),
                      //               ))),
                      //     ),
                      //   ),
                      // )
                    ]),
                  ),
                  Column(
                    children: [
                      Text(
                        "Gaurav Singh",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Age : 32 ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(
                elevation: 10,
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 40.0, bottom: 190.0),
                color: const Color(0xff0087FF),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: profile_list2(context))),
          ),
        ],
      ),
    );
  }
}

profile_list2(BuildContext buildContext) {
  List list = [];

  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      List itemlist2 = ["Name", "Age", "Email", "Address", "contact"];
      List itemlist3 = [
        "Gaurav Singh",
        "32",
        "gauravs8383@gmail.com",
        " Noida Sector 62",
        "98765321"
      ];

      return ListTile(
        title: Text(
          itemlist2[index],
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15.0,
            color: Color(0xffFFFFFF),
          ),
        ),
        trailing: Text(
          itemlist3[index],
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 15.0,
            color: Color(0xffFFFFFF),
          ),
        ),
      );
    },
  );
}
