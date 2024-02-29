import 'package:flutter/material.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/colors.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/responsive/responsive_layout.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/screens/mobile_screen.dart';
import 'package:my_responsive_design_whatsapp_ui_clone/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI Clone',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: appBarColor),
        scaffoldBackgroundColor: backgroundColor,
        useMaterial3: true,
      ),
      home: const Responsive(
        mobileScreen: MobileScreen(),
        webScreen: WebScreen(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png',
        ),
      ),
    );
  }
}
