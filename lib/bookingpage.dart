import 'package:doctor_appointment_app_ui/Appointment%20details.dart';
import 'package:doctor_appointment_app_ui/Dropdownbutton1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Dropdownbuttonpage.dart';
import 'const/constclass.dart';


// extension LocationsExtension on Locations {
//   String get displayName {
//     switch (this) {
//       case Locations.timeSlot1:
//         return "10:30am - 11:30am";
//       case Locations.timeSlot2:
//         return "11:30am - 12:30pm";
//       case Locations.timeSlot2:
//         return "11:30am - 12:30pm";
//       case Locations.timeSlot2:
//         return "11:30am - 12:30pm";
//       case Locations.timeSlot2:
//         return "11:30am - 12:30pm";
//     }
//   }
// }

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  // final TextEditingController _dropDownController = TextEditingController();
  // final TextEditingController _dropDownController1 = TextEditingController();
  final TextEditingController datepick = TextEditingController();
  DateTime? selectedDate;
  String dateToDisplay = '00-00-0000';
  // Set<Locations> filters1 = {};
  final List<String> timings = [
    "10:30am - 11:30am",
    "11:30am - 12:30pm",
    "12.30pm - 1:30pm",
    "2:30pm - 3:30pm",
    "3:30pm - 4:30pm",
    "4:30pm - 5:30pm",
  ];

  String? selectedTiming;
  // @override
  // void dispose() {
  //   _dropDownController.dispose();
  //   _dropDownController1.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
          ),
          Stack(
              children: [
            Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
              child: Column(children: [
                // SizedBox(
                //   height: 10,
                // ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Doctors Info",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: ConstClass.OPENSANS,
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      IconButton(
                        onPressed: () async {},
                        icon: Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () async {},
                        icon: Icon(
                          Icons.favorite_outline_sharp,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(children: [
                  Image.asset(
                    "lib/assets/Doctor1.png",
                    fit: BoxFit.fill,
                    height: 300,
                  ),
                  // SizedBox(
                  //   height: 40,
                  // ),
                  Container(
                    // height: 526,
                    width: 550,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  "David H. Brown",
                                  style: TextStyle(
                                    color: Color(0xff33384B),
                                    fontFamily: ConstClass.OPENSANS,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    // shadows: [
                                    //   Shadow(
                                    //     offset: Offset(1.0, 1.0),
                                    //     blurRadius: 1.0,
                                    //     color: Color.fromARGB(255, 0, 0, 0),
                                    //   ),
                                    // ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right:16.0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(text: "4.8",style: TextStyle(color:Colors.black)),
                                  WidgetSpan(
                                      child:  Icon(
                                      Icons.star,
                                      color: Color(0xffEED600),size: 20,
                                  ))
                                ])),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text("Psychologists | Apollo Hospital"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Icon(Icons.access_time,size: 18,color: Color(0xff778800),),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "10:30am - 5:30pm",
                                style: TextStyle(
                                    color: Color(0xff778800),
                                    fontSize: 14,
                                    fontFamily: ConstClass.OPENSANS),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:16.0,right:16.0),
                            child: Divider(color: Color(0xffF4F4F6),),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [Text("15yr",style: TextStyle(color: Color(0xff33384B),fontSize: 16,fontWeight: FontWeight.bold),), Text("Experience")],
                              ),
                              Column(
                                children: [Text("50+",style: TextStyle(color: Color(0xff33384B),fontSize: 16,fontWeight: FontWeight.bold),), Text("Treated")],
                              ),
                              Column(
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.attach_money_outlined,
                                      size: 18,
                                    )),
                                    TextSpan(
                                        text: "25.00",
                                        style: TextStyle(color: Color(0xff33384B),fontSize: 16,fontWeight: FontWeight.bold),),
                                  ])),
                                  Text("Hourly Rate"),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Selected Date",
                              style: TextStyle(
                                color: Color(0xff33384B),
                                fontFamily: ConstClass.OPENSANS,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 10, bottom: 10),
                            child: TextFormField(
                              readOnly: true,
                              controller: datepick,
                              validator: (value){
                                if (value!.isEmpty == value!.length < 1) {
                                  return 'Choose Date';
                                }
                              },
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide:
                                  BorderSide(color: Color(0xffEEEEEE), width: 1),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  borderSide:
                                  BorderSide(color: Color(0xffEEEEEE), width: 1),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                    BorderSide(color: Color(0xffEEEEEE),
                                    )),
                                hintText: "Select here",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: ConstClass.OPENSANS),
                                suffixIcon:InkWell(
                                    onTap: () async {
                                      final initialDate = DateTime.now();
                                      final newDate = await showDatePicker(context: context,
                                          initialDate:initialDate,
                                          firstDate:DateTime(DateTime.now().year - 10),
                                          lastDate: DateTime(DateTime.now().year + 20),
                                          barrierDismissible: true,
                                          helpText: "Select the Date"

                                        // keyboardType:
                                      );
                                      if(newDate == null){
                                        return;
                                      }
                                      setState(() {
                                        selectedDate = newDate;
                                        dateToDisplay = '${selectedDate!.day} - ${selectedDate!.month} - ${selectedDate!.year}';
                                        print(dateToDisplay);
                                        datepick.text= dateToDisplay;
                                      });
                                    },
                                    child: Icon(Icons.calendar_month_outlined,size: 20,color:Colors.blueAccent,)),
                              ),
                            ),
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Expanded(
                          //       child: DropdownButtonScreen(
                          //           controller: _dropDownController),
                          //     ),
                          //     SizedBox(
                          //         width: 10), // Add spacing between the dropdowns
                          //     Expanded(
                          //       child: DropdownButtonScreenOne(
                          //           controller: _dropDownController1),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Schedules",
                              style: TextStyle(
                                color: Color(0xff33384B),
                                fontFamily: ConstClass.OPENSANS,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Wrap(
                              spacing: 10,
                              children: timings.map((String timings) {
                                return FilterChip(
                                  label: Text(timings),
                                  selectedColor: Colors.blueAccent,
                                  labelStyle: TextStyle(
                                    color: selectedTiming == timings
                                        ? Colors.white
                                        : Colors.grey,
                                    fontSize: 12,
                                    fontFamily: ConstClass.OPENSANS,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  side:
                                  BorderSide(color: Colors.grey),
                                  showCheckmark: true,
                                  surfaceTintColor: Colors.white,
                                  selected: selectedTiming == timings,
                                  onSelected: (bool selected) {
                                    setState(() {
                                    selectedTiming = selected ? timings : null;
                                    });
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,right: 20),
                                child: ElevatedButton(
                                    onPressed: () {
                                    Get.to(AppointmentDetailsScreen());
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff4285F4),
                                        elevation: 5,
                                        fixedSize: Size(450, 50)),
                                    child: Text(
                                      "Book Appointment",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              )),
                          SizedBox(height: 20,),
                        ]),
                  ),
                ]),
              ]),
            ),
          ]),
        ]),
      ),
    );
  }
}
