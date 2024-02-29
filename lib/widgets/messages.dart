import 'package:flutter/material.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/info.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/widgets/my_message.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/widgets/sent_message.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessage(index: index);
        }
        return SentMessage(index: index);
      },
    );
  }
}
