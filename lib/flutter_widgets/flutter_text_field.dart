import 'package:flutter/material.dart';

class FlutterTextField extends StatefulWidget {
  const FlutterTextField({super.key});

  @override
  State<FlutterTextField> createState() => _FlutterTextFieldState();
}

class _FlutterTextFieldState extends State<FlutterTextField> {

  TextEditingController textEditingController = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter text field'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              style: TextStyle(
                color: Colors.red,
                fontSize: 24.0
              ),
              controller: textEditingController, // برای گرفتن مقدار تکست فیلد
              decoration: InputDecoration(
                labelText: 'Enter your text',
                labelStyle: TextStyle(
                  fontSize: 24.0,
                  color: Colors.blue
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0), // رنگ و عرض مرز
                  borderRadius: BorderRadius.circular(10.0), // شعاع گرد کردن گوشه‌ها
                ),

                  filled: true,
                fillColor: Colors.yellow, // رنگ پس زمینه

                contentPadding: EdgeInsets.all(36.0)// حاشیه داخلی تکست فیلد
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  text = textEditingController.text;
                });
              },
              child: Container(
                height: 56.0,
                width: 120.0,
                color: Colors.blue,
                child: Center(
                  child: Text('نمایش مقدار'),
                ),
              ),
            ),

            Text(text)
          ],
        ),
      )

    );
  }
}
