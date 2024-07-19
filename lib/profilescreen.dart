import 'package:doctor_appointment_app_ui/Appointment%20details.dart';
import 'package:doctor_appointment_app_ui/paymentmethods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'Const/Constclass.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
            ),
            Stack(children: [
              Container(
                height: 820,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                child: Column(children: [
                  Gap(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 350.0),
                    child: IconButton(
                      onPressed: () async {},
                      icon: Icon(
                        Icons.more_vert_rounded,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "lib/assets/expressive-woman-gesturing_23-2150198673.jpg",
                        ),
                        child: Align(
                            alignment: Alignment(1, 1),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white.withOpacity(0.60),
                              child: IconButton(
                                onPressed: () async {},
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 15,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            )),
                      ),
                      Gap(10),
                      Text(
                        "Ameila Renata",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: ConstClass.OPENSANS,
                        ),
                      ),
                      Gap(10),
                      Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          "lib/assets/Heartbeat.png")),
                                  Text(
                                    "Heart Rate",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xffC1F3EF)),
                                  ),
                                  Text(
                                    "215bpm",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xffFFFFFF)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  color: Colors.white,
                                  thickness: 1,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50.0, right: 50.0),
                              child: Column(
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      child:
                                          Image.asset("lib/assets/Fire.png")),
                                  Text(
                                    "Calories",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xffC1F3EF)),
                                  ),
                                  Text(
                                    "756cal",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xffFFFFFF)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  color: Colors.white,
                                  thickness: 1,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          "lib/assets/Barbell.png")),
                                  Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xffC1F3EF)),
                                  ),
                                  Text(
                                    "103lbs",
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xffFFFFFF)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 450,
                        width: 550,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Gap(30),
                              ListTile(
                                onTap: () {},
                                leading: Image.asset("lib/assets/Group 49.png"),
                                title: Text(
                                  "My Saved",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff101623),
                                      fontWeight: FontWeight.w500),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                              Divider(),
                              ListTile(
                                onTap: () {
                                  Get.to(AppointmentDetailsScreen());
                                },
                                leading:
                                    Image.asset("lib/assets/Appointment.png"),
                                title: Text(
                                  "Appointment",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff101623),
                                      fontWeight: FontWeight.w500),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                              Divider(),
                              ListTile(
                                onTap: () {
                                  Get.to(PaymentMethodsScreen());
                                },
                                leading: Image.asset("lib/assets/Paymentmethod.png"),
                                title: Text(
                                  "Payment Method",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff101623),
                                      fontWeight: FontWeight.w500),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                              Divider(),
                              ListTile(
                                onTap: () {},
                                leading: Image.asset("lib/assets/FAQ.png"),
                                title: Text(
                                  "FAQs",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff101623),
                                      fontWeight: FontWeight.w500),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                              Divider(),
                              ListTile(
                                leading: Image.asset("lib/assets/Group 109.png"),
                                title: Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffFF5C5C),
                                      fontWeight: FontWeight.w500),
                                ),
                                trailing: Icon(Icons.arrow_forward_ios_rounded),
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          child: Container(
                                            height: 450,
                                            width: double.infinity,
                                            child: Column(
                                              children: [
                                                Gap(20),
                                                CircleAvatar(
                                                  radius: 50,
                                                  backgroundImage: AssetImage(
                                                      "lib/assets/Group 96.png"),
                                                ),
                                                Gap(50),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20),
                                                    child: Text(
                                                      "Are you sure to log out of your account?",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                  ),
                                                ),
                                                Gap(30),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Log Out",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.blueAccent,
                                                          fixedSize:
                                                              Size(200, 50)),
                                                ),
                                                Gap(30),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        color:
                                                            Colors.blueAccent),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.white,
                                                          fixedSize:
                                                              Size(200, 50)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                              ),
                            ]),
                      ),
                    ],
                  ),
                ]),
              ),
            ]),
            // ProfileImageScreen(),
          ],
        ),
      ),
    );
  }
}
