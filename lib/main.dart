import 'package:flutter/material.dart';
import 'package:rr_amazon_clone/constants/global_variables.dart';
import 'package:rr_amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:rr_amazon_clone/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ))),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              const Center(child: Text('Flutter Amazon Clone')),
              Builder(builder: (context) {
                return ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AuthScreen.routeName);
                    },
                    child: const Text("hello"));
              })
            ],
          )),
    );
  }
}
