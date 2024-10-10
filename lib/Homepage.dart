import 'package:darklightmodeprovider/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.asset(
            'lib/assets/img/Group 1.jpg',
            width: 200,
            height: 200, // Specify image paths
          ),
          ElevatedButton(
              onPressed: () => {provider.toggleTheme()},
              child: const Text("change theme")),
        ],
      )),
    );
  }
}
