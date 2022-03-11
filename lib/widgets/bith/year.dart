import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buildYear extends StatefulWidget {
  buildYear({
    Key? key,
  }) : super(key: key);

  @override
  State<buildYear> createState() => _buildYearState();
}

class _buildYearState extends State<buildYear> {
  String year = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Year',
        hintText: 'Year',
        suffixIcon: Icon(Iconsax.calendar_1),
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
      onSaved: (value) => setState(() => year = value!),
    );
  }
}
