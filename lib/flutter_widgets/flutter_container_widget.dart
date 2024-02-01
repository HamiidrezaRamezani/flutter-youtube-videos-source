import 'package:flutter/material.dart';

class FlutterContainerWidget extends StatefulWidget {
  const FlutterContainerWidget({super.key});

  @override
  State<FlutterContainerWidget> createState() => _FlutterContainerWidgetState();
}

class _FlutterContainerWidgetState extends State<FlutterContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Container Widget'),
      ),

      body: Center(
        child: Container(
          height: 250.0,
          width: 250.0,

          alignment: Alignment.center,
          // margin: EdgeInsets.only(top: 500.0, right: 100),
          // margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              color: Colors.black,
              width: 15.0
            ), 
            // borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5.0,
                offset: Offset(
                  4, 12
                ),
                spreadRadius: 8
              ),
            ]
          ),
          // child: Container(
          //   height: 150,
          //   width: 150,
          //   color: Colors.blue,
          // ),
        ),
      ),
    );
  }
}
