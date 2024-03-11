import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({super.key});

  @override
  State<ViewAllScreen> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF6FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Medical Specialties",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
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
                      fillColor: Color(0xffEBF6FF),
                      hintText: "  Search For Doctor Name ",
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                  Row(
                    children: [
                      Stack(children: []),
                      Column(
                        children: [
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Stack(children: []),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/Ear.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Ear & Nose",
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
                                "lib/assets/images/brain.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Neurologist\nSpecialist",
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
                                "lib/assets/images/heart.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Heart",
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
                                "lib/assets/images/eye.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Eye",
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
                                "lib/assets/images/lungs.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Lungs",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Stack(children: []),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/stomch.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Stomach",
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
                                "lib/assets/images/bone.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Bones\nSpecialist",
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
                            "Teeth\nSpecialist",
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
                                "lib/assets/images/kedney.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Kidney",
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
                                "lib/assets/images/gall.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Gallbladder",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Stack(children: []),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/nerv.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Nerve\nSpecialist",
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
                                "lib/assets/images/ribbon.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Cancer\nSpecialist",
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
                                "lib/assets/images/cancer.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Bone Marrow\nSpecialist",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                      //SizedBox(width: 15),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/endoc.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Endocrinologist\nSpecialist",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/dental.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Dentist\nSpecialist",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Stack(children: []),
                      Column(
                        children: [
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Stack(children: []),
                      Column(
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 205, 169, 212),
                              radius: 30,
                              child: Image.asset(
                                "lib/assets/images/nerv.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Nerve\nSpecialist",
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
                                "lib/assets/images/ribbon.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Cancer\nSpecialist",
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
                                "lib/assets/images/cancer.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Bone Marrow\nSpecialist",
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
                                "lib/assets/images/endoc.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Brist\nSpecialist",
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
                                "lib/assets/images/dental.png",
                                height: 33,
                                width: 33,
                              ) //Text
                              ),
                          Text(
                            "Dentist\nSpecialist",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]))),
      ),
    );
  }
}
