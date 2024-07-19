import 'package:doctor_appointment_app_ui/Const/Constclass.dart';
import 'package:doctor_appointment_app_ui/paymentmethods.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AppointmentDetailsScreen extends StatefulWidget {
  const AppointmentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentDetailsScreen> createState() =>
      _AppointmentDetailsScreenState();
}

class _AppointmentDetailsScreenState extends State<AppointmentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_rounded),
          ),
          title: Text(
            "Appointment Details",
            style: TextStyle(
                color: Color(0xff33384B),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_outline_sharp)),
          ],
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          backgroundImage: AssetImage("lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"),// Replace with actual image URL
                          radius: 20,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'David H. Brown',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 87),
                                Text(
                                  '4.8',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(Icons.star, color: Colors.amber, size: 20),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Psychologists | Apollo hospital',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Hourly Rate: \$25.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Schedule",
                  style: TextStyle(
                      color: Color(0xff33384B),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: ConstClass.OPENSANS),
                ),
              ),
              Gap(20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "8 October, Sun",
                              style: TextStyle(
                                  color: Color(0xff33384B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: ConstClass.OPENSANS),
                            ),
                            Center(child: Text("Date")),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "2.30pm - 3.30pm",
                              style: TextStyle(
                                  color: Color(0xff33384B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: ConstClass.OPENSANS),
                            ),
                            Center(child: Text("Time")),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Message",
                  style: TextStyle(
                      color: Color(0xff33384B),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: ConstClass.OPENSANS),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    hintText: "write a message for the doctor",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontFamily: ConstClass.OPENSANS),
                  ),
                ),
              ),
              Gap(60),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          Get.to(PaymentMethodsScreen());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff4285F4),
                            elevation: 5,
                            fixedSize: Size(450, 50)),
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        )),
                  )),
            ]));
  }
}
