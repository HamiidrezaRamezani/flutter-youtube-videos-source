import 'package:flutter/material.dart';

class FlutterCardWidget extends StatefulWidget {
  const FlutterCardWidget({super.key});

  @override
  State<FlutterCardWidget> createState() => _FlutterCardWidgetState();
}

class _FlutterCardWidgetState extends State<FlutterCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Card Widget'),
      ),
      body: Center(
        // نمونه ساده کارت
        // child: Card(
        //   child: Padding(
        //     padding: EdgeInsets.all(16.0),
        //     child: Text('یک نمونه کارت فرضی'),
        //   ),
        // ),
        child: SizedBox(
          height: 400,
          child: Card(
            elevation: 5.0,
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(35.0))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),// این یک چالش است
                  child: Image.network(
                      'https://fastly.picsum.photos/id/67/200/300.jpg?hmac=GntzjckKE7-naeHFrr8ZEIIaj3Bm-Iln4f844p1Np08'),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('یک نمونه کارت فرضی'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
