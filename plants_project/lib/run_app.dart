import 'package:flutter/material.dart';
import 'package:plants_project/pages/home_page.dart';

class RunApp extends StatefulWidget {
  const RunApp({super.key});

  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage(),);
  }
}