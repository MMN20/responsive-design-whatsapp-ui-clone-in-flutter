import 'package:flutter/material.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/colors.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/info.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/widgets/messages.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 13,
            backgroundImage: NetworkImage(
              data[index]['profilePic'].toString(),
            ),
          ),
        ),
        title: Text(
          data[index]['name'].toString(),
          style: const TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: MessagesList(),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: dividerColor,
                ),
              ),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      fillColor: backgroundColor,
                      filled: true,
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
