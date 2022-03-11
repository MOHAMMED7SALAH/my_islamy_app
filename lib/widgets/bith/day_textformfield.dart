import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buildDay extends StatefulWidget {
  buildDay({
    Key? key,
  }) : super(key: key);

  @override
  State<buildDay> createState() => _buildDayState();
}

class _buildDayState extends State<buildDay> {
  String day = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(Iconsax.calendar_1),
        labelText: 'Day',
        hintText: 'Day',
        // hintStyle: TextStyle(),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff37B898), width: 1.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff37B898), width: 1.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
        // border: OutlineInputBorder(),
        // errorBorder:
        //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
        // focusedErrorBorder:
        //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
        // errorStyle: TextStyle(color: Colors.purple),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Number';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      obscureText: true,
      onSaved: (value) => setState(() => day = value!),
    );
  }
}
