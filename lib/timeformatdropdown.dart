import 'package:flutter/material.dart';

class TimeFormatDropdown extends StatefulWidget {
  const TimeFormatDropdown({super.key});

  @override
  _TimeFormatDropdownState createState() => _TimeFormatDropdownState();
}

class _TimeFormatDropdownState extends State<TimeFormatDropdown> {
  String selectedFormat = '24 Hrs'; // Default value

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedFormat,
      onChanged: (String? newValue) {
        setState(() {
          selectedFormat = newValue!;
        });
      },
      items: <String>['24 Hrs', 'AM', 'PM']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: TextStyle(color: Colors.white)),
        );
      }).toList(),
      dropdownColor: Colors.black,
      icon: Icon(Icons.arrow_drop_down, color: Colors.white),
      style: TextStyle(color: Colors.white),
    );
  }
}
