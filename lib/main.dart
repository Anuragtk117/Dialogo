import 'package:dialogo/core/colors/colors.dart';
import 'package:dialogo/presentation/conversation/conversation_screen.dart';
import 'package:dialogo/presentation/mainPage/main_page_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
      ),
      home: const MainPageScreen(),
      routes: {'/ConversationScreen': (context) => const ConversationScreen()},
    );
  }
}
