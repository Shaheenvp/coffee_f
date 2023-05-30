import 'package:coffee/detail2.dart';
import 'package:coffee/detailpage.dart';
import 'package:coffee/hometab%20bar.dart';
import 'package:flutter/material.dart';

import 'home.dart';
void main()
{
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

