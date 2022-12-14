import 'package:flutter/material.dart';
import 'package:pardemo/pages/home_page.dart';
import 'package:pardemo/pages/showEmp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SowPage.id: (context) => const SowPage(),
      },
    );
  }
}