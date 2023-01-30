import 'package:flutter/material.dart';
import 'package:shop_door/constants/global_variables.dart';
import 'package:shop_door/features/auth/screens/auth_screen.dart';
import 'package:shop_door/router.dart';

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
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello"),
        ),
        body: Center(
          child: Column(children: [
            const Text("hello"),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AuthScreen.routeName);
                  },
                  child: const Text("auth screen"));
            })
          ]),
        ),
      ),
    );
  }
}
