import 'package:flutter/material.dart';
import 'package:vexshop/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main-screen';

  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
