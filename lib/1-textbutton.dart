import 'package:flutter/material.dart';

class TextButtonOne extends StatefulWidget {
  const TextButtonOne({super.key});

  @override
  State<TextButtonOne> createState() => _TextButtonOneState();
}

class _TextButtonOneState extends State<TextButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextButton"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            
            onPressed: (){},
             child: Text("TextButton"),
           
          style: TextButton.styleFrom(
            
            backgroundColor: Colors.blue, // Background color
            padding:const EdgeInsets.all(16.0), // Padding
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
  ),
            ),
            SizedBox(height: 100,),
          TextButton.icon(
            onPressed: (){},
             icon:const Icon(Icons.phone_outlined),
              label:const Text("TextButton.Icon"),
              )
        ],
      ),
    );
  }
}