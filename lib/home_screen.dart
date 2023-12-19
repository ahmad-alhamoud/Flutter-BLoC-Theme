import 'package:bloctheme/settings_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SettingScreen()));
          },
          icon: const Icon(Icons.settings),
        ),
      ),
      body: const Center(
        child: Text(
          'Home',

          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
