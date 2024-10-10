import 'package:darklightmodeprovider/Homepage.dart';
import 'package:darklightmodeprovider/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final provider= Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context,child){
          return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: provider.theme,
          home: const Homepage(),
        );
        },
       );
  }
}
