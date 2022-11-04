import 'package:custom_theme/note_screen.dart';
import 'package:custom_theme/profile_screen.dart';
import 'package:custom_theme/theme_constant.dart';
import 'package:custom_theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, child) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                visualDensity: VisualDensity(vertical: 3.5, horizontal: 3.5),
                primaryColor: Colors.green,
                primarySwatch: Colors.red,
                splashColor: Colors.amber,
              brightness: Brightness.light,
                appBarTheme: AppBarTheme(
                    iconTheme: const IconThemeData(color: Colors.orangeAccent),
                    backgroundColor: const Color.fromARGB(255, 189, 189, 189),
                    actionsIconTheme:
                        IconThemeData(color: Colors.purple.shade200),
                    centerTitle: true,
                    titleTextStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.w500,
                    )),
                scaffoldBackgroundColor:
                    const Color.fromARGB(255, 117, 117, 117),
                fontFamily: 'Kanit',
                textTheme: const TextTheme(
                  headline1: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  headline3: TextStyle(
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey),
                  bodyText2: TextStyle(
                      fontSize: 20.0, color: Colors.black),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  textStyle: const TextStyle(color: Colors.white),
                  backgroundColor: Colors.purple.shade300,
                )),
                primaryIconTheme: const IconThemeData(color: Colors.green),
                iconTheme: IconThemeData(color: Colors.orange.withOpacity(0.6)),
               colorScheme: ColorScheme.
                fromSwatch(primarySwatch: Colors.blue)
                    .copyWith(secondary: Colors.orange),
                floatingActionButtonTheme: const FloatingActionButtonThemeData(
                    backgroundColor: Colors.purple),
             ),
              // themeMode:themeProvider.thememode,
              // theme: MyTheme.lightTheme,
              // darkTheme: MyTheme.darkTheme,
              home: const ProfileScreen());
        });
  }
}
