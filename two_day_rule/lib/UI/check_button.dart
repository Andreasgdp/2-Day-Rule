import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {

  CheckButton();

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () => {},
        ),
      );
  }
}