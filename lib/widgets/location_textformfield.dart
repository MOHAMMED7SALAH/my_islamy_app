import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class buildLocation extends StatefulWidget {
  buildLocation({Key? key}) : super(key: key);

  @override
  State<buildLocation> createState() => _buildLocationState();
}

class _buildLocationState extends State<buildLocation> {
  String location = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Iconsax.search_normal_1,
          color: Color(0xff37B898),
        ),
        labelText: 'Location',
        suffixIcon: Icon(
          Iconsax.location,
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
        if (value!.length < 3) {
          return 'Please enter valid location';
        } else {
          return null;
        }
      },
      onSaved: (value) => setState(() => location = value!),
      keyboardType: TextInputType.name,
    );
  }
}
