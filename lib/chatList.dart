import 'package:flutter/material.dart';
import 'package:whatsap_mock/chatScreen.dart';

//This screen helps to create list to display in chat page
class ChatListItem extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String timestamp;
  final bool hasUnread;

  const ChatListItem({
    super.key,
    required this.name,
    required this.lastMessage,
    required this.timestamp,
    this.hasUnread = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatScreen(
                      name: name,
                    )));
      },
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage("image/boy.jpg"),
        ),
        title: Text(name),
        subtitle: Row(
          children: [
            Text(lastMessage),
            if (hasUnread)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.circle, color: Colors.teal),
              ),
          ],
        ),
        trailing: Text(
          timestamp,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
