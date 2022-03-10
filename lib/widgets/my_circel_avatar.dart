import 'package:flutter/material.dart';

class MyCircelAvatar extends StatelessWidget {
  ImageProvider? image;

  MyCircelAvatar({
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Color(0xff37B898),
        radius: 56,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: image,
          // maxRadius: ,
          // minRadius: ,
          // foregroundColor: Colors.black,
          radius: 50,
          onBackgroundImageError: image != null
              ? (e, stackTrace) {
                  print('e: ${e}');
                }
              : null,
          child: image == null
              ? Image.asset('assets/person.png')
              : Container(height: 0, width: 0),
        ));
  }
}
