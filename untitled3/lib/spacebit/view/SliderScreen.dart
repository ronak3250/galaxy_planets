//
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'dart:math';
//
// class MyCustomWidget extends StatefulWidget {
//   @override
//   _MyCustomWidgetState createState() => new _MyCustomWidgetState();
// }
//
// class _MyCustomWidgetState extends State<MyCustomWidget> {
//   double _page = 10;
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     PageController pageController;
//     pageController = PageController(initialPage: 10);
//     pageController.addListener(
//           () {
//         setState(
//               () {
//             _page = pageController.page!;
//           },
//         );
//       },
//     );
//
//     return Scaffold(
//         body: ,
//     );
//     }
// }