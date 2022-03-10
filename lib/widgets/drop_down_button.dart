import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
// Initial Selected Value
  String dropdownvalue = 'English';

// List of items in our dropdown menu
  var items = [
    'English',
    'Arabic',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      // decoration: InputDecoration(

      //   border: OutlineInputBorder(

      //     borderRadius: BorderRadius.circular(2),
      //   ),
      // ),
      // Initial Value
      value: dropdownvalue,

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(
            items,
            style: TextStyle(
              fontFamily: 'Avenir',
              color: Color(0xff37B898),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}
