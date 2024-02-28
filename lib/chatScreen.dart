import 'package:flutter/material.dart';

//This screen is chat screen
class ChatScreen extends StatefulWidget {
  final String name;
  const ChatScreen({super.key, required this.name});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isMicActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: Text(widget.name),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8),
            child: Icon(Icons.videocam_rounded),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 10),
            child: Icon(Icons.phone),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 1,
                image: AssetImage("image/bg1.png"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text("Hey, Whatsapp"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "10:00 pm",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
            //End chat
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffE1FDC6),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text("Good Night"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  "10:00 pm",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 320,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Focus(
                        onFocusChange: (hasFocus) {
                          // Update the mic icon based on focus state
                          setState(() {
                            isMicActive = !hasFocus;
                          });
                        },
                        child: const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            hintText: "Type the message here",
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Icon(
                                Icons.tag_faces_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.teal,
                      child: isMicActive
                          ? const Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 20,
                            )
                          : const Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 20,
                            ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
