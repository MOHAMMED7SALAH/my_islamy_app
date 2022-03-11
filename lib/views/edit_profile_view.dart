import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_islamy_app/widgets/bith/day_textformfield.dart';
import 'package:my_islamy_app/widgets/bith/month.dart';
import 'package:my_islamy_app/widgets/bith/year.dart';
import 'package:my_islamy_app/widgets/email_textformfield.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';
import 'package:my_islamy_app/widgets/username_textformfield.dart';

class EditProfileView extends StatefulWidget {
  EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  static const values = <String>['Male', 'Female'];
  String selectedValue = values.first;

  final selectedColor = Color(0xffFEAA00);
  final unselectedColor = Color(0xff9A9A9A);

  final formKey = GlobalKey<FormState>();

  var selectedIndex = 0;
  myLogin() async {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      formdata.save();
    } else {}
  }

  // String email = '';
  // String username = '';

  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xff37B898),
          title: Text(
            'Edit Profile',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // backgroundColor: Color(0xffEFF1F4),
        body: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Material(
              child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: image != null
                        ? ClipOval(
                            child: Image.file(
                              image!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.fill,
                            ),
                          )
                        : FlutterLogo(),
                  ),
                  // TextButton(
                  //     onPressed: () => pickImage(ImageSource.camera), child: Text('data'))
                  IconButton(
                    onPressed: () => pickImage(ImageSource.gallery),
                    icon: Icon(Icons.abc_outlined),
                  ),
                  Text(
                    'User Name',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  buildUsername(),
                  SizedBox(height: 10),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  buildEmail(),
                  SizedBox(height: 10),
                  Text(
                    'Birth date',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(width: size.width * .39, child: buildDay()),
                      Spacer(),
                      Container(width: size.width * .39, child: buildMonth()),
                    ],
                  ),
                  Center(
                      child: Container(width: size.width, child: buildYear())),
                  SizedBox(height: 10),
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildRadios(),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change password',
                      style: TextStyle(
                        color: Color(0xff365DFF),
                        decoration: TextDecoration.underline,
                        decorationThickness: 3,
                        fontFamily: 'Avenir',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                        onTap: () => myLogin(),
                        child: Container(
                          width: size.width,
                          height: size.height * .06,
                          decoration: BoxDecoration(
                            color: Color(0xff37B898),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff37B898).withOpacity(.5),
                                spreadRadius: 3,
                                // blurRadius: 2,
                                // offset: Offset(5, 6), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Update',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
  Widget buildRadios() => Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: unselectedColor,
        ),
        child: Column(
          children: values.map(
            (value) {
              final selected = this.selectedValue == value;
              final color = selected ? selectedColor : unselectedColor;

              return RadioListTile<String>(
                value: value,
                groupValue: selectedValue,
                title: Row(
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        color: color,
                        fontFamily: 'Avenir',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                activeColor: selectedColor,
                onChanged: (value) =>
                    setState(() => this.selectedValue = value!),
              );
            },
          ).toList(),
        ),
      );
  
}
