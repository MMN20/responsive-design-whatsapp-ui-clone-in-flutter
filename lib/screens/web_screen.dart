import 'package:flutter/material.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/colors.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/info.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/widgets/contacts_list.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/widgets/messages.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/widgets/web_contacts_app_bar.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/widgets/web_search_bar.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            child: Column(
              children: [
                WebContactsAppBar(),
                WebSearchBar(),
                Divider(
                  height: 1,
                  color: dividerColor,
                ),
                Expanded(child: ContactsList())
              ],
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('backgroundImage.png'), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  width: MediaQuery.sizeOf(context).width * 0.75,
                  decoration: const BoxDecoration(
                      color: webAppBarColor,
                      border: Border(
                          left: BorderSide(color: dividerColor, width: 1.5))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(data[0]['profilePic']!),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        data[0]['name']!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.search),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
                const Expanded(child: MessagesList()),
                Container(
                  decoration: const BoxDecoration(color: backgroundColor),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                                borderSide: BorderSide.none,
                              ),
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: 'Type a message',
                              prefix: Padding(
                                padding: EdgeInsets.only(left: 8),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.grey,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/////////////////////////////////////// code the web screen ui, it will show up automatically if you resize the browser for bigger size,
/// you can use the contacts list, messages, it will work correctly with the web also