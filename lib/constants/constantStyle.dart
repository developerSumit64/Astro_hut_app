import 'package:flutter/material.dart';
// final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
//   // primary: Colors.blue, // background color
//   // onPrimary: Colors.white, // text color
//   padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),// padding
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10), // rounded corners
//   ),
// );
// import 'package:flutter/material.dart';

// constants.dart
// import 'package:flutter/material.dart';
final Container containerdesign= Container(
  decoration: BoxDecoration(
    shape: BoxShape.rectangle,

    gradient: LinearGradient(
      colors: [
        Colors.blue.shade500,
        Colors.blue.shade300,
      ],
    ),
    borderRadius: BorderRadius.circular(12),
  ),

);

const InputDecoration kTextFormFieldDecoration = InputDecoration(
    focusedBorder: OutlineInputBorder(

      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        color: Colors.blueAccent,// Focused blue border colo258/369*-+

        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        color: Colors.black12, // Enabled black border color
        width: 1,
      ),
    ),
    hintStyle: TextStyle(
      color: Colors.black26,
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
    labelStyle: TextStyle(
      color: Colors.black26,
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
    fillColor: Colors.white,
    filled: true,
    // errorStyle: TextStyle(
    //   color: Colors.redAccent,
    //   fontWeight: FontWeight.bold,
    // ),
    errorBorder:OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
    )


);
final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
  shadowColor: Colors.grey.shade400, // Shadow color
  elevation: 3, // Slightly higher elevation for a more prominent shadow
  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0), // Rounded corners
  ),
  textStyle: TextStyle(
    fontSize: 18, // Font size
    fontWeight: FontWeight.bold, // Font weight
  ),
);

final ButtonStyle elevatedButtonStylerounded = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: Colors.blue.shade400, // Text color
  shadowColor: Colors.green, // Shadow color
  elevation: 2, // Slightly higher elevation for a more prominent shadow
  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0), // Rounded corners
  ),
  textStyle: TextStyle(
    fontSize: 18, // Font size
    fontWeight: FontWeight.bold, // Font weight
  ),
);

