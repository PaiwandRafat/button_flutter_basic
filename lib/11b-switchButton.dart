import 'package:flutter/material.dart';

class switchbuttonThree extends StatefulWidget {
  const switchbuttonThree({super.key});

  @override
  State<switchbuttonThree> createState() => _switchbuttonThreeState();
}

class _switchbuttonThreeState extends State<switchbuttonThree> {
  final FocusNode _textFieldFocusNode = FocusNode();
  final FocusNode _switchListTileFocusNode = FocusNode();
  bool _isSwitched = false;

  @override
  void initState() {
    super.initState();

    // Add listeners to the focus nodes
    _textFieldFocusNode.addListener(() {
      setState(() {}); // Trigger rebuild to update UI
    });

    _switchListTileFocusNode.addListener(() {
      setState(() {}); // Trigger rebuild to update UI
    });
  }

  @override
  void dispose() {
    // Dispose of the focus nodes when the widget is disposed
    _textFieldFocusNode.dispose();
    _switchListTileFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FocusNode Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: _textFieldFocusNode.hasFocus ? Colors.blue : Colors.grey,
                ),
              ),
              child: TextField(
                focusNode: _textFieldFocusNode,
                decoration: InputDecoration(
                  labelText: 'Enter text',
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: _switchListTileFocusNode.hasFocus ? Colors.blue : Colors.grey,
                ),
              ),
              child: SwitchListTile(
                
                title: const Text('Enable setting'),
                value: _isSwitched,
                onChanged: (value) {
                  setState(() {
                    _isSwitched = value;
                  });
                },
                focusNode: _switchListTileFocusNode,
                secondary: const Icon(Icons.settings),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Request focus for the TextField
                _textFieldFocusNode.requestFocus();
              },
              child: const Text('Focus TextField'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Request focus for the SwitchListTile
                _switchListTileFocusNode.requestFocus();
              },
              child: const Text('Focus SwitchListTile'),
            ),
          ],
        ),
      ),
    );
  }
}

