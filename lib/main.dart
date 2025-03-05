import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scmteacher/screen/onboarding/on_boarding.dart';

import 'controller/login_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Teacher App',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        home:  OnboardingPage(),
      ),
    );
  }
}
