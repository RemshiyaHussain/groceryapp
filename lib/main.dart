import 'package:flutter/material.dart';
import 'package:groceryapp/presentation/screen/authentication/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 92, 200, 157)),
      scaffoldBackgroundColor: const Color.fromARGB(255, 71, 194, 147),
     
     
   elevatedButtonTheme: ElevatedButtonThemeData( style: ElevatedButton.styleFrom())
     ),
    
      home:LoginScreen(),
    );
  }
}

