import 'package:button_baisc1/1-textbutton.dart';
import 'package:button_baisc1/11-switch_button.dart';
import 'package:button_baisc1/13a-checkbox.dart';
import 'package:button_baisc1/14-alert_daealog.dart';
import 'package:button_baisc1/button_project/url_ip.dart';
import 'package:flutter/material.dart';

import '11a-switchButton.dart';
import '11b-switchButton.dart';
import '12-radio.dart';
import '13-checkbox.dart';
import '14a-daialohpackages.dart';
import '8-FloatingActionButton.dart';
import '9-MaterialButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     home: TextButtonOne(),
    );
  }
}
