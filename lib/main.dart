import 'package:flutter/material.dart';
import 'package:shop_door/constants/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "shop-door",
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
          colorScheme:
              const ColorScheme.light(primary: GlobalVariables.secondaryColor)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello"),
        ),
        body: const Center(child: Text("hello")),
      ),
    );
  }
}
