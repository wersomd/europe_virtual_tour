import 'package:app/views/our_ai/our_ai_chat_page.dart';
import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class OurAi extends StatefulWidget {
  const OurAi({super.key});

  @override
  State<OurAi> createState() => _OurAiState();
}

class _OurAiState extends State<OurAi> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      appBar: CustomAppBar(
        scaffoldKey: scaffoldKey,
      ),
      drawer: const CustomDrawer(),
      body: const ChatPage(),
    );
  }
}
