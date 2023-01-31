import 'package:flutter/material.dart';

class Settings extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SettingsState();

  }

}


class SettingsState extends State<Settings>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('IMPOSTAZIONI'),
      ),
    );
  }

}