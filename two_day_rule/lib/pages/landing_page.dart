// Packages
import 'package:flutter/material.dart';

// Utils
import 'package:two_day_rule/UTILS/Constants.dart';

// UI
import '../UI/check_button.dart';

// Pages
import 'settings.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    new Material(
      color: Color(0xFfFAFAFA),
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('test'),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.Settings) {
      print('Settings');
    } else if (choice == Constants.Donate) {
      print('Donate');
    } else if (choice == Constants.ContactMe) {
      print('Contact me');
    }
  }
}

