import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buildUsername extends StatefulWidget {
  buildUsername({Key? key}) : super(key: key);

  @override
  State<buildUsername> createState() => _buildUsernameState();
}

class _buildUsernameState extends State<buildUsername> {
  String username = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Iconsax.user, color: Color(0xff37B898)),

        labelText: 'Username',
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
        if (value!.length < 4) {
          return 'Enter at least 4 characters';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
      obscureText: true,
      maxLength: 30,
      onSaved: (value) => setState(() => username = value!),
    );
  }
}
