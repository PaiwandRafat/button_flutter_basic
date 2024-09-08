import 'package:flutter/material.dart';

class BackButtonOne extends StatefulWidget {
  const BackButtonOne({super.key});

  @override
  State<BackButtonOne> createState() => _BackButtonOneState();
}

class _BackButtonOneState extends State<BackButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          BackButton(onPressed: (){},),
          
        ],
      ),
    );
  }
}