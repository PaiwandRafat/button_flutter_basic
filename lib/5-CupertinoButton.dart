import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonOne extends StatefulWidget {
  const CupertinoButtonOne({super.key});

  @override
  State<CupertinoButtonOne> createState() => _CupertinoButtonOneState();
}

class _CupertinoButtonOneState extends State<CupertinoButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CupertinoButton(onPressed: () {  }, child: Text("CupertinoButton"),)
        ],
      ),
    );
  }
}