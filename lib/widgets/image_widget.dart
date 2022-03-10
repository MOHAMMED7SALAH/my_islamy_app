// import 'dart:io';
// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class imageWidget extends StatelessWidget {
//   final File image;
//   final ValueChanged<ImageSource> onClicked;
//   imageWidget({
//     Key? key,
//     required this.image,
//     required this.onClicked,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         children: [
//           buildImage(context),
//           Positioned(
//             child: buildEditIcon(color),
//             bottom: 0,
//             right: 4,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildImage(BuildContext context) {
//     final imagePath = this.image.path;
//     final image = imagePath.contains('https://')
//         ? NetworkImage(imagePath)
//         : FileImage(File(imagePath));
//     return ClipOval(
//         child: Material(
//       color: Colors.transparent,
//       child: Ink.image(
//         image: image as ImageProvider,
//         fit: BoxFit.cover,
//         width: 160,
//         height: 160,
//         child: InkWell(
//           onTap: () async {
//             final source = await showImageSource(context);
//             if (source == null) return;
//             onClicked(source);
//           },
//         ),
//       ),
//     ));
//   }

//   Widget buildEditIcon(Color color) => BuildCicle(
    

//   ),

  
// }
