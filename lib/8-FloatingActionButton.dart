import 'package:flutter/material.dart';

class FloatingActionButtonOne extends StatefulWidget {
  const FloatingActionButtonOne({super.key});

  @override
  State<FloatingActionButtonOne> createState() => _FloatingActionButtonOneState();
}

class _FloatingActionButtonOneState extends State<FloatingActionButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
  onPressed: () {
    print('FloatingActionButton pressed');
  },
  child: Icon(Icons.add),
),
      appBar: AppBar(),
      body: Column(
        children: [

        ],
      ),
    );
  }
}