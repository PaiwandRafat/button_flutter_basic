import 'package:flutter/material.dart';

class OutlinedButtonOne extends StatefulWidget {
  const OutlinedButtonOne({super.key});

  @override
  State<OutlinedButtonOne> createState() => _OutlinedButtonOneState();
}

class _OutlinedButtonOneState extends State<OutlinedButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlinedButton(onPressed: (){}, child: Text("Outlinedbutton")),
          OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("OutlinedButton.icon"))
        ],
      ),
    );
  }
}