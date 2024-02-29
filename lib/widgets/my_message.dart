import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/colors.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/info.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Card(
        margin: const EdgeInsets.only(
            top: 5, bottom: 5, left: kIsWeb ? 30 : 90, right: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
              topRight: Radius.circular(0)),
        ),
        color: messageColor,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                messages[index]['text'].toString(),
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    messages[index]['time'].toString(),
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.done_all)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
