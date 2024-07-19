import 'package:doctor_appointment_app_ui/setpassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Center(
                child: Text(
                  "Sign UP",
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text("Full Name"),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                controller: email,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Enter full name",
                  suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                  border: InputBorder.none,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text("Email Address"),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                controller: email,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Enter email address",
                  suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                  border: InputBorder.none,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(SetPasswordScreen());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4285F4),
                          elevation: 5,
                          fixedSize: Size(450, 50)),
                      child: Text(
                        "Continue",
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
            Center(
              child: RichText(
                text: TextSpan(children: [
                  WidgetSpan(
                    child: Text(
                      "__________________________    ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  TextSpan(
                      text: "or",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  WidgetSpan(
                      child: Text(
                        "   ___________________________",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ))
                ]),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 100,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset("lib/assets/1220388_google_buzz_communication_social_icon.png",height:30,width: 25,),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset("lib/assets/1269919_apple_icon.png",height: 30,width: 25,),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset("lib/assets/1920524_facebook_facebook icon_logo_network_icon.png",
                      height: 30,width: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}