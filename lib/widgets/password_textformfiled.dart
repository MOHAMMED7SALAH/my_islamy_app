import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buildPassword extends StatefulWidget {
  buildPassword({Key? key}) : super(key: key);

  @override
  State<buildPassword> createState() => _buildPasswordState();
}

class _buildPasswordState extends State<buildPassword> {
  String password = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Iconsax.lock,
          color: Color(0xff37B898),
        ),
        labelText: 'Password',
        suffixIcon: Icon(
          Iconsax.eye_slash,
          color: Color(0xff37B898),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff37B898), width: 1.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff37B898), width: 1.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      validator: (value) {
        if (value!.length < 7) {
          return 'Password must be at least 7 characters long';
        } else {
          return null;
        }
      },
      onSaved: (value) => setState(() => password = value!),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }
}
