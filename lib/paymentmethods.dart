import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'Const/Constclass.dart';
import 'chatscreen.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  String selectedvalue = "";
  List Paymentmethod = ['MasterCard', 'Visa', 'Payoneer', 'GPay', 'Paypal'];
  List images = ['lib/assets/mastercard1.png',
    'lib/assets/visa-removebg-preview (1).png',
    'lib/assets/payoneer1.png',
    'lib/assets/Gpay-removebg-preview.png',
    'lib/assets/paypal-removebg-preview.png',
  ];
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
          "Payment Methods",
          style: TextStyle(
              color: Color(0xff33384B),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_outline_sharp)),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Text(
                  "Select Method",
                  style: TextStyle(
                      color: Color(0xff33384B),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ),
            ],
          ),
          Gap(20),
          ListView.builder(
            shrinkWrap: true,
            itemCount: Paymentmethod.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, bottom: 10),
                    child: Card(
                      child: ListTile(
                        title: Text(
                          Paymentmethod[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: ConstClass.OPENSANS,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                          leading: Radio<String>(
                          activeColor: Colors.blueAccent,
                          value: Paymentmethod[index],
                          groupValue: selectedvalue,
                          onChanged: (value) {
                            setState(() {
                              selectedvalue = value!;
                            });
                          },
                        ),
                        trailing: Container(
                      height: 50,width: 50,
                          child: Image.asset(images[index]),
              )



                        ),
                      ),
                    ),

                ],
              );
            },
          ),
          Gap(70),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
                onPressed: () {
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
                                      "lib/assets/Done.png"),
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
                                      "Payment Success",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight:
                                          FontWeight.w800),
                                    ),
                                  ),
                                ),
                                Gap(20),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(
                                        left: 20,
                                        right: 20),
                                    child: Text(
                                      "Your Payment has been successful, you can have a consultation session with your trusted doctor",
                                      style: TextStyle(
                                          color: Color(0xffA1A8B0),
                                          fontSize: 16,
                                         ),
                                    ),
                                  ),
                                ),
                                Gap(50),
                                ElevatedButton(
                                  onPressed: () {
                                    Get.to(ChatScreen());
                                  },
                                  child: Text(
                                    "Chat Doctor",
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

                              ],
                            ),
                          ),
                        );
                      });
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
        ],
      ),
    );
  }
}
