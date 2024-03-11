import 'package:dr_saheb_app/Payment2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF6FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Payment",
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
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 10,
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              color: Color(0xff0087FF),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Master Card",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(width: 20),
                            Container(
                              height: 45,
                              width: 65,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(5)),
                              // child: Icon(
                              //   Icons.phone,
                              //   color: Colors.white,
                              // )
                            ),
                            SizedBox(width: 30),
                            Container(
                              height: 10,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              // child: Icon(
                              //   Icons.chat,
                              //   color: Colors.white,
                              // )
                            ),
                            SizedBox(width: 30),
                            Container(
                              height: 15,
                              width: 85,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              // child: Icon(
                              //   Icons.person,
                              //   color: Colors.white,
                              // )
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                  child: Text("1234",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ))),
                              SizedBox(width: 30),
                              Container(
                                  child: Text("5674",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ))),
                              SizedBox(width: 30),
                              Container(
                                  child: Text("9867",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ))),
                              SizedBox(width: 30),
                              Container(
                                  child: Text("0763",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ))),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height: 13,
                                width: 230,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height: 13,
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
                //color: Colors.white,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue, // Border color
                      width: 1.0 // Border width
                      ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ListTile(
                  leading: Image.asset("lib/assets/images/phone.png"),
                  title: Text(
                    "Phone pe",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                )),
            SizedBox(height: 10),
            Container(
                //color: Colors.white,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue, // Border color
                      width: 1.0 // Border width
                      ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ListTile(
                  leading: Image.asset("lib/assets/images/Gay.png"),
                  title: Text(
                    "Google pay",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                )),
            SizedBox(height: 10),
            Container(
                //color: Colors.white,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue, // Border color
                      width: 1.0 // Border width
                      ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ListTile(
                  leading: Image.asset("lib/assets/images/upi.png"),
                  title: Text(
                    "Upi",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                )),
            SizedBox(height: 10),
            Container(
                //color: Colors.white,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue, // Border color
                      width: 1.0 // Border width
                      ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ListTile(
                  leading: Image.asset("lib/assets/images/money.png"),
                  title: Text(
                    "Cash on Delivery",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                )),
            SizedBox(height: 10),
            Container(
                //color: Colors.white,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue, // Border color
                      width: 1.0 // Border width
                      ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ListTile(
                  leading: Image.asset("lib/assets/images/net.png"),
                  title: Text(
                    "Net Banking",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                )),
            SizedBox(height: 10),
            Container(
                //color: Colors.white,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue, // Border color
                      width: 1.0 // Border width
                      ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ListTile(
                  leading: Image.asset("lib/assets/images/net.png"),
                  title: Text(
                    "Debit Card/Credit Card",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                )),
            SizedBox(height: 50),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentpayScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0087FF),
                    fixedSize: const Size(300, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Text(
                  'Pay Now',
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
    );
  }
}
