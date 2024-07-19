import 'package:doctor_appointment_app_ui/bookingpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key? key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<String> catNames = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ear",
  ];
  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: Color(0xFF0C84FF), size: 30),
    Icon(MdiIcons.heartPlus, color: Color(0xFF0C84FF), size: 30),
    Icon(MdiIcons.eye, color: Color(0xFF0C84FF), size: 30),
    Icon(MdiIcons.brain, color: Color(0xFF0C84FF), size: 30),
    Icon(MdiIcons.earHearing, color: Color(0xFF0C84FF), size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading :Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Container(
            width: 60, // Set the desired width
            height: 60, // Set the desired height
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
               image: AssetImage(
                  "lib/assets/expressive-woman-gesturing_23-2150198673.jpg",
                ), // Path to your asset image
                fit: BoxFit.scaleDown, // Use BoxFit.cover to fit the image inside the circle
              ),
            ),
          ),
        ),
        // leading:  Padding(
        //   padding: EdgeInsets.only(left: 16.0),
        //   child: Container(
        //     height: 50,
        //     width: 50,
        //     child: CircleAvatar(
        //       radius: 30,
        //       backgroundImage:AssetImage("lib/assets/profile.png",)
        //
        //     ),
        //   ),
        // ),
        toolbarHeight: 100,
        title: Column(
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Text(
              "Andrew Smith",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_outline_sharp)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Upcoming Appointments",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff33384B),
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (ctx, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 130,
                            width: 289,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 20),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage("lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Jason Smith",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "Dentist",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        RichText(
                                          text: TextSpan(children: [
                                            TextSpan(text: "4.8"),
                                            WidgetSpan(
                                                child: Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffEED600),
                                            ))
                                          ]),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert),
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.calendar_month_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "5 Oct",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.timer_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "10:30pm",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Color(0xff2E6FF3), fontSize: 16),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  height: 110,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catNames.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF2F8FF),
                                  shape: BoxShape.rectangle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ]),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Find Doctors",
                      style: TextStyle(
                          color: Color(0xff33384B),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      "See all",
                      style: TextStyle(color: Color(0xff2E6FF3), fontSize: 16),
                    ),
                  )
                ],
              ),
              Padding(
            padding: const EdgeInsets.only(left: 16, right: 10),
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(0xffFAFAFC),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage("lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Jason Smith",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "Dentist",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "4.8",
                                              style: TextStyle(color: Colors.black),
                                            ),
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Color(0xffEED600),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Icon(
                                          Icons.timer_outlined,
                                          color: Colors.black38,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "10:30pm - 5.30pm",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline_sharp),
                                color: Colors.red,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.to(BookingScreen());
                            },
                            child: Text(
                              "Book Appointment",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffE9F0FF),
                              fixedSize: Size(350, 50),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
            ]),
      ),
    );
  }
}
