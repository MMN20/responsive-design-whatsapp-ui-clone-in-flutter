import 'package:flutter/material.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.06,
      padding: const EdgeInsets.all(12),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: 'Search..',
          fillColor: searchBarColor,
          prefix: const Padding(padding: EdgeInsets.only(left: 10)),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
