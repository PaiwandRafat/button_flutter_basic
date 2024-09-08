import 'package:flutter/material.dart';

class MaterialButtonOne extends StatefulWidget {
  const MaterialButtonOne({super.key});

  @override
  State<MaterialButtonOne> createState() => _MaterialButtonOneState();
}

class _MaterialButtonOneState extends State<MaterialButtonOne> {
  @override
  Widget build(BuildContext context) {
                return Scaffold(
                  appBar: AppBar(),
                  body: Center(
                    child: Column(
                      children: [
                        MaterialButton(
                                  onPressed: () {
                                    print('MaterialButton pressed');
                                  },
                                  child: Text('MaterialButton'),
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  padding: EdgeInsets.all(16.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                )
                      ],
                    ),
                  ),
                );
              }
            }