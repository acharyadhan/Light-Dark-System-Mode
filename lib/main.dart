import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'darktheme.dart';
import 'theme_screen_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MultiProvider(
     providers: [
      ChangeNotifierProvider(create: (_)=> ThemeChanger())
     ],
     child: Builder(builder: (BuildContext context){
       final themeChanger = Provider.of<ThemeChanger>(context);
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         themeMode: themeChanger.themeMode,
         theme: ThemeData(
           brightness: Brightness.light,
           primarySwatch: Colors.blue,
         ),
         darkTheme: ThemeData(
           brightness: Brightness.dark,
         ),
         home: DarkTheme(),
       );
     }),
   );
  }
}

