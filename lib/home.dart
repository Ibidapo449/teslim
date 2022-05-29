import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switch = false;
  final ThemeData _dark = ThemeData(brightness: Brightness.dark);
  final ThemeData _light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _switch ? _dark: _light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("teslim"),
        ),
        body: Center(
          child: Switch(
              value: _switch,
              onChanged: (_newvalue) {
                setState(() {
                  _switch = _newvalue;
                });
              }),
        ),
      ),
    );
  }
}
