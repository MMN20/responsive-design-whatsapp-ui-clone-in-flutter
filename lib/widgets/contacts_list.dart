import 'package:flutter/material.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/colors.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/info.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/screens/chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(index: index),
                ));
          },
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      NetworkImage(data[index]['profilePic'].toString()),
                ),
                title: Text(
                  data[index]['name'].toString(),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  data[index]['message'].toString(),
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  data[index]['time'].toString(),
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Divider(
                color: dividerColor,
                height: 1,
              )
            ],
          ),
        );
      },
    );
  }
}
