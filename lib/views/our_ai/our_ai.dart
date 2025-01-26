import 'package:flutter/material.dart';
import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/drawer/custom_drawer.dart';

class OurAiPage extends StatefulWidget {
  const OurAiPage({super.key});

  @override
  State<OurAiPage> createState() => _OurAiPageState();
}

class _OurAiPageState extends State<OurAiPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
      ),
    );
  }
}
