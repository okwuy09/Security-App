import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ButtonSpeedDial extends StatefulWidget {
  const ButtonSpeedDial({Key? key}) : super(key: key);

  @override
  _ButtonSpeedDialState createState() => _ButtonSpeedDialState();
}

class _ButtonSpeedDialState extends State<ButtonSpeedDial> {
  var isDialOpen = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;
          return false;
        }
        return true;
      },
      child: SpeedDial(
        openCloseDial: isDialOpen,
        spacing: 10.0,
        backgroundColor: Colors.black,
          curve: Curves.easeInBack,
          child: Icon(Icons.add, color: Colors.yellow[800],),
          children: [
            SpeedDialChild(
              //onTap: () => print('Home'),
              backgroundColor: Colors.green[900],
              child: Icon(Icons.person, size: 30, color: Colors.white),
              label: 'Chat Agency',
              labelBackgroundColor: Colors.green[900],
              labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SpeedDialChild(
              //onTap: () => print('Home'),
              backgroundColor: Colors.black,
              child: Icon(Icons.post_add, size: 30, color: Colors.yellow[800],),
              label: 'Create New Post',
              labelBackgroundColor: Colors.black,
              labelStyle: TextStyle(color: Colors.yellow[800], fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
    );
  }
}
