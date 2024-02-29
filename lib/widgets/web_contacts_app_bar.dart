import 'package:flutter/material.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/colors.dart';

class WebContactsAppBar extends StatelessWidget {
  const WebContactsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.07,
      color: webAppBarColor,
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
            ),
          ),
          Spacer(),
          Icon(
            Icons.comment,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
