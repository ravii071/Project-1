import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int a = 30;

    return Scaffold(
      appBar: AppBar(
        title: Text("Scanner"),
        textTheme: Typography.blackCupertino,
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Hyyvnnvvnnon  $a"),
        ),
      ),
    );
  }
}
