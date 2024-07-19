import 'package:doctor_appointment_app_ui/Const/Constclass.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        leadingWidth: 60,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
              Gap(5),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"),

              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("David H. Brown",
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20,
                      fontFamily: ConstClass.OPENSANS,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text("Psychologists",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 10,
                      fontFamily: ConstClass.OPENSANS,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  )
                ],
              ),
            ]),
        // actions: [
        //   Column(
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Gap(20),
        //       Text(
        //         "Ends in:",
        //         style: TextStyle(
        //           color: ConstClass.TEXTCATEGORY,
        //           fontSize: 10,
        //           fontFamily: ConstClass.MONTSERRAT,
        //           fontWeight: FontWeight.w500,
        //           fontStyle: FontStyle.normal,
        //         ),
        //       ),
        //       Text(
        //         '${stopwatch.elapsed.inMinutes.toString().padLeft(2, '0')}:'
        //         '${(stopwatch.elapsed.inSeconds % 60).toString().padLeft(2, '0')}:'
        //         '${(stopwatch.elapsed.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0')}',
        //         style: TextStyle(
        //           color: ConstClass.TEXTCATEGORY,
        //           fontSize: 14,
        //           fontFamily: ConstClass.MONTSERRAT,
        //           fontWeight: FontWeight.w500,
        //           fontStyle: FontStyle.normal,
        //         ),
        //       ),
        //     ],
        //   ),
        //   Gap(20),
        // ],
        toolbarHeight: 70,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left:100.0,top:8,bottom: 8,right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      _messages[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
