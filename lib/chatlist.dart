import 'package:doctor_appointment_app_ui/const/constclass.dart';
import 'package:flutter/material.dart';

class ChatlistScreen extends StatefulWidget {
  const ChatlistScreen({Key? key}) : super(key: key);

  @override
  State<ChatlistScreen> createState() => _ChatlistScreenState();
}

class _ChatlistScreenState extends State<ChatlistScreen> {
 final List<Map<String,String>> docs = [
    {
      "name": "David H.Brown",
      "specialist": "Psychologists",
      "image":
      "lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"
    },
    {
      "name": "Robert Johnson",
      "specialist": "Neurologist",
      "image":
      "lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"
    },
    {
      "name": "Laura White",
      "specialist": "Dentist",
      "image":
      "lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"
    },
    {
      "name": "Jennifer Miller",
      "specialist": "Pediatrician",
      "image":
      "lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"
    },
    {
      "name": "Brian Clark",
      "specialist": "Psychiatrist",
      "image":
      "lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"
    },
    {
      "name": "Jaden John ",
      "specialist": "Cardiologist",
      "image":
      "lib/assets/WhatsApp Image 2024-07-19 at 2.35.19 PM.jpeg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          "Chat",
          style: TextStyle(
            fontFamily: ConstClass.OPENSANS,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff33384B),
          ),
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
          children: [
            ListView.builder(
                padding: const EdgeInsets.only(bottom: 6),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: docs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 80,
                    width: 450,
                    child: ListTile(
                      onTap: () async {},
                      leading: CircleAvatar(
                        radius: 20,
                        // backgroundColor: Colors.blue,
                        backgroundImage: AssetImage(docs[index]["image"]!),
                      ),
                      title: Text(
                        docs[index]["name"]!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: ConstClass.OPENSANS,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        docs[index]["specialist"]!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: ConstClass.OPENSANS,
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () async {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                          title: SizedBox(
                                            width: 200,
                                            child: Text(
                                              "Are you sure to make the call",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      ConstClass.OPENSANS),
                                            ),
                                          ),
                                          actions: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  child: ElevatedButton(
                                                    onPressed: () async {},
                                                    child: Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontFamily:
                                                            ConstClass.OPENSANS,
                                                      ),
                                                    ),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      splashFactory: NoSplash
                                                          .splashFactory,
                                                      fixedSize:
                                                          const Size(100, 49),
                                                      backgroundColor:
                                                          Colors.white,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      side: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  child: ElevatedButton(
                                                    onPressed: () async {},
                                                    child: Text(
                                                      "Call",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontFamily:
                                                            ConstClass.OPENSANS,
                                                      ),
                                                    ),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      splashFactory: NoSplash
                                                          .splashFactory,
                                                      fixedSize:
                                                          const Size(100, 49),
                                                      backgroundColor:
                                                          Colors.blue,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ));
                              },
                              icon: Icon(
                                Icons.call,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.videocam_outlined,
                                  color: Colors.blue,
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
