import 'package:flutter/material.dart';
import '../constants/colors.dart';

// Container withButton(BuildContext context, String destination, String text,
//     Color textcolor, Color backgroundColor,[VoidCallback? onPressed]) {
//   return Container(
//     width: double.infinity,
//     height: 50,
//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
//     child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             backgroundColor: backgroundColor,
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(10)))),
//         onPressed: () {
//           Navigator.pushNamed(context, destination);
//         },
//         child: Text(
//           text,
//           style: TextStyle(
//               color: textcolor, fontSize: 26, fontWeight: FontWeight.bold),
//         )),
//   );
// }

Container withButton(BuildContext context, String text, Color textcolor,
    Color backgroundColor, VoidCallback onPressed) {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: textcolor, fontSize: 26, fontWeight: FontWeight.bold),
        )),
  );
}

TextFormField myField(IconData iconData, String text, String message,
    {required Null Function(dynamic value) onSaved}) {
  return TextFormField(
    decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: secondaryColor,
        )),
        prefixIcon: Icon(
          iconData,
          color: secondaryColor,
        ),
        hintText: text,
        hintStyle: const TextStyle(fontSize: 20),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)))),
    validator: (value) {
      if (value!.isEmpty) {
        return message;
      }
      return null;
    },
    onSaved: (value) {},
  );
}
