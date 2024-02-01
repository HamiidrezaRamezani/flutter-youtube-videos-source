import 'dart:math';

import 'package:flutter/material.dart';

class FlutterLayoutWidget extends StatefulWidget {
  const FlutterLayoutWidget({super.key});

  @override
  State<FlutterLayoutWidget> createState() => _FlutterLayoutWidgetState();
}

class _FlutterLayoutWidgetState extends State<FlutterLayoutWidget> {

  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout Widget'),
      ),

      body: ListView.builder(
        itemCount: 50,
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          return Container(
            height: 50,
            width: 80,
            color: Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1.0,
            ),
          );
        },
      ),
      // Column layout
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(
      //       height: 50,
      //       width: 80,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       height: 50,
      //       width: 80,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),

      // Row layout
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Container(
      //       height: 50,
      //       width: 80,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       height: 50,
      //       width: 80,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),
      // Stack layout
      // body: Stack(
      //   children: [
      //     Positioned(
      //       bottom: 120.0,
      //       right: 50.0,
      //       child: Container(
      //         height: 50.0,
      //         width: 120.0,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Align(
      //       alignment: Alignment.topCenter,
      //       child: Container(
      //         height: 80,
      //         width: 180.0,
      //         color: Colors.green,
      //       )
      //     )
      //   ],
      // ),
    );
  }
}
