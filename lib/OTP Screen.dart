import 'package:doctor_appointment_app_ui/Signin_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import 'BottomNavigationBarScreen.dart';
import 'Homepage.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _pinput = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150),
            Center(
                child: Text(
                  "Enter OTP",
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 80,
            ),
            Center(child: Text("We've sent an OTP code to your email",)),
            SizedBox(
              height: 3,
            ),
            Center(child: Text("user53684@gmail.com")),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: PinCodeTextField(

                  autofocus: true,
                  maxLength: 4,
                  controller: _pinput,
                  onTextChanged: (v) {
                    setState(() {
                      // smsCode = _pinput.text;
                    });
                  },
                  highlight: true,
                  highlightColor: Colors.blue,
                  hasTextBorderColor: Colors.green,

                    // borderRadius: BorderRadius.circular(10),
                    pinBoxHeight: 50.0,
                    pinBoxWidth: 50.0,
                  pinBoxRadius: 10,
                  defaultBorderColor: Colors.grey,
                  pinBoxDecoration:
                  ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinTextAnimatedSwitcherTransition:
                  ProvidedPinBoxTextAnimation.scalingTransition,
                  // pinTextAnimatedSwitcherDuration:
                  // Duration(milliseconds: 300),
                    // activeFillColor: Colors.white,
                    // inactiveFillColor: Colors.white,
                    // selectedFillColor: Colors.white,
                    // inactiveColor: ConstClass.GREEN,
                    // inactiveBorderWidth: 1.5,
                    // selectedColor: ConstClass.GREEN,
                    // selectedBorderWidth: 1,,
                  keyboardType: TextInputType.number,

                  // cursorColor: Colors.white,
                  // // animationType: AnimationType.fade,
                  // animationDuration: Duration(milliseconds: 100),
                  // enableActiveFill: true,

                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(child: Text("We will resend the code in 59s")),
            SizedBox(height: 30,),
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(HomeScreen());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4285F4),
                          elevation: 5,
                          fixedSize: Size(450, 50)),
                      child: Text(
                        "Verify",
                        style: TextStyle(color: Colors.white),
                      )),
                )),
            SizedBox(
              height: 50,
            ),
            Center(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  WidgetSpan(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ))
                ]),
              ),
            ),
            SizedBox(
              height: 50,
            ),

          ],
        ),
      ),
    );
  }
}