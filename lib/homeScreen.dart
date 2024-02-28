import 'package:flutter/material.dart';
import 'package:whatsap_mock/chatList.dart';

// This Screen is where the app starts
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: const Text('Whatsapp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.teal,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.group,
                    color: _selectedIndex == 0 ? Colors.white : Colors.white38,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                TextButton(
                  child: Text(
                    "Chats",
                    style: TextStyle(
                      color:
                          _selectedIndex == 1 ? Colors.white : Colors.white38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                TextButton(
                  child: Text(
                    "Updates",
                    style: TextStyle(
                      color:
                          _selectedIndex == 2 ? Colors.white : Colors.white38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                TextButton(
                  child: Text(
                    "Calls",
                    style: TextStyle(
                      color:
                          _selectedIndex == 3 ? Colors.white : Colors.white38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: _selectScreen(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: const Icon(Icons.chat),
        onPressed: () {},
      ),
    );
  }

  Widget _selectScreen() {
    switch (_selectedIndex) {
      case 0:
        return const Center(child: Text("Community Screen"));

      case 1:
        return ListView.builder(
          itemCount: 110,
          itemBuilder: (context, index) {
            return ChatListItem(
              name: "Friend $index",
              lastMessage: "Last message",
              timestamp: "7:38 PM",
            );
          },
        );
      case 2:
        return const Center(child: Text("Update Screen"));
      default:
        return const Center(child: Text("Call Screen"));
    }
  }
}
