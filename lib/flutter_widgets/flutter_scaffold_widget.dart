import 'package:flutter/material.dart';

class FlutterScaffoldWidget extends StatefulWidget {
  const FlutterScaffoldWidget({super.key});

  @override
  State<FlutterScaffoldWidget> createState() => _FlutterScaffoldWidgetState();
}

class _FlutterScaffoldWidgetState extends State<FlutterScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello Flutter Scaffold',
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          height: 250.0,
          width: 250.0,
          color: Colors.red,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      // Drawer for ltr language and endDrawer for rtl language
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'setting',
        ),
      ]),
      backgroundColor: Colors.green,
    );
  }
}
