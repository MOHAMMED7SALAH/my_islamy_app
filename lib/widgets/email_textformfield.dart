import 'package:flutter/material.dart';

class buildEmail extends StatefulWidget {
  buildEmail({
    Key? key,
  }) : super(key: key);

  @override
  State<buildEmail> createState() => _buildEmailState();
}

class _buildEmailState extends State<buildEmail> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Exampleuser@gmail.com',
        prefixIcon: Icon(Icons.email_rounded, color: Color(0xff37B898)),
        labelText: 'Email',

        // suffixIcon: IconButton(onPressed: (value) => setState((value) => email),

        // icon: Icon(Icons.clear)),
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
        final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
        final regExp = RegExp(pattern);

        if (value!.isEmpty) {
          return 'Enter an email';
        } else if (!regExp.hasMatch(value)) {
          return 'Enter a valid email Please';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) => setState(() => email = value!),
    );
  }
}
