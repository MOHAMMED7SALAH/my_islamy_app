import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_islamy_app/widgets/email_textformfield.dart';
import 'package:my_islamy_app/widgets/username_textformfield.dart';

class EditProfileView extends StatefulWidget {
  EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
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
        backgroundColor: Color(0xffEFF1F4),
        body: Material(
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
              'Profile',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildUsername(),
            Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildEmail()
          ],
        )),
      ),
    );
    ;
  }
}
