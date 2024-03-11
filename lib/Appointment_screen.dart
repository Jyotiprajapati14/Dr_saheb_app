import 'package:date_time_picker/date_time_picker.dart';
import 'package:dr_saheb_app/Add_Review.dart';
import 'package:dr_saheb_app/Appointment2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  List<Map<String, String>> time = [
    {'': '6:00 PM'},
    {'': '6:30 PM'},
    {'': '7:00 PM'},
    {'': '7:30 PM'},
    {'': '8:00 PM'},
    {'': '8:30 PM'},
    {'': '9:00 PM'},
    {'': '9:30 PM'},
    {'': '10:00 PM'},
    {'': '10:30 PM'}
  ];

  List<Map<String, String>> people = [
    {'': '1-2'},
    {'': '2-3'},
    {'': '3-4'},
    {'': '4-5'},
    {'': '5-6'},
    {'': '6-7'},
    {'': '7-8'},
    {'': '8-9'},
    {'': '9-10'},
    {'': '10-11'}
  ];

  //var _formKey = GlobalKey<FormState>();

  List<int> tappedtime = [];
  List<int> tapped = [];

  var choosetime = 2;
  var choosepeople = 2;

  late TextEditingController dateController =
      TextEditingController(text: DateTime.now().toString());
  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF6FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Dr. Maria Lexa",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddReviewScreen(),
                  ));
            },
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
          SizedBox(width: 10),
          RatingBar.builder(
            initialRating: 0,
            minRating: 0,
            updateOnDrag: false,
            glow: false,
            itemCount: 1,
            itemSize: 25,
            allowHalfRating: false,
            itemBuilder: (context, _) => Icon(
              Icons.share,
              color: Colors.blue,
            ),
            onRatingUpdate: (rating) {
              // Handle the rating update here
            },
          ),
          SizedBox(width: 30),
        ],
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // SizedBox(height: 20),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: Row(
                        children: [
                          Image(
                              image:
                                  AssetImage("lib/assets/images/doctor.png")),
                          SizedBox(width: 15),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 5,
                                    left: 5,
                                    top: 5,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Dr. Maria Lexa",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 5, top: 5.0, bottom: 4.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'General Physician',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 5, top: 5.0, bottom: 4.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Southern California Hospital',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                        ),
                                        child: Icon(
                                          Icons.phone,
                                          color: Colors.white,
                                        )),
                                    SizedBox(width: 20),
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                        ),
                                        child: Icon(
                                          Icons.chat,
                                          color: Colors.white,
                                        )),
                                    SizedBox(width: 20),
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                        ),
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        )),
                                    SizedBox(width: 20),
                                    Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                        ),
                                        child: Icon(
                                          Icons.video_call,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
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
                SizedBox(height: 10),
                Text(
                  "Date",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(height: 20),
                DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'dd, MM, yyyy',
                  controller: dateController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.event, color: Color(0xff0087FF)),
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1))),
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2100),
                  //dateLabelText: 'Date',
                  onChanged: (val) => setState(() => _valueChanged1 = val),
                  validator: (val) {
                    setState(() => _valueToValidate1 = val ?? '');
                    return null;
                  },
                  onSaved: (val) => setState(() => _valueSaved1 = val ?? ''),
                ),
                SizedBox(height: 10),
                Text(
                  "Time",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: time.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: SizedBox(
                            // width: 85,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: tappedtime.contains(index)
                                      ? Color(0xff0087FF)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(
                                          color: tappedtime.contains(index)
                                              ? Color(0xff0087FF)
                                              : Color(0xff9796A1)))),
                              onPressed: () {
                                choosetime = 2;
                                setState(() {
                                  if (tappedtime.contains(index)) {
                                    this.setState(() {
                                      tappedtime.remove(index);
                                    });
                                  } else {
                                    this.setState(() {
                                      tappedtime.add(index);
                                    });
                                  }
                                });
                              },
                              child: Text(
                                time[index][''] ?? '',
                                style: TextStyle(
                                    color: tappedtime.contains(index)
                                        ? Colors.white
                                        : Color(0xff9796A1)),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20),
                Text(
                  "How Many People",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  // width: 340,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: SizedBox(
                            height: 40,
                            //width: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  choosepeople == 2;
                                  if (tapped.contains(index)) {
                                    this.setState(() {
                                      tapped.remove(index);
                                    });
                                  } else {
                                    this.setState(() {
                                      tapped.add(index);
                                    });
                                  }
                                });
                              },
                              child: Text(
                                people[index][''] ?? '',
                                style: TextStyle(
                                    color: tapped.contains(index)
                                        ? Colors.white
                                        : Color(0xff9796A1)),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: tapped.contains(index)
                                      ? Color(0xff0087FF)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                          color: tapped.contains(index)
                                              ? Color(0xff0087FF)
                                              : Color(0xff9796A1)))),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 60),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Appointment2Screen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0087FF),
                        fixedSize: const Size(340, 48),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Book An Appointment',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ]),
        ),
      ),
    );
  }
}
