import 'package:flutter/material.dart';

class CloseButtonOne extends StatefulWidget {
  const CloseButtonOne({super.key});

  @override
  State<CloseButtonOne> createState() => _CloseButtonOneState();
}

class _CloseButtonOneState extends State<CloseButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CloseButton(
        onPressed: () {
          print('CloseButton pressed');
        },
)
        ],
      ),
    );
  }
}