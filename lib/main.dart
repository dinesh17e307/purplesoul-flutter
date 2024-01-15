import 'dart:ui';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:purple_soul/pages/ProfilePageComponent.dart';
import 'FlutterComponents/FlutterButton.dart';
import 'Practise/List.dart';
import './pages/login.dart';
import './pages/HomePageComponent.dart';
import './pages/ProfilePageComponent.dart';

// @dart=2.9
void main() {
  runApp(MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Color.fromARGB(255, 114, 3, 99),
            primarySwatch: Colors.purple,
            fontFamily: 'Dongle'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/signin': (BuildContext context) => LoginPageComponent(),
          '/home': (BuildContext context) => HomeScreen(),
          '/profile': (BuildContext context) => ProfilePage(),
          '/library': (BuildContext context) => ProfilePage(),
          '/podcast': (BuildContext context) => ProfilePage(),
        },
        home: SplashScreen(
          loadingText: Text('powered by PurpleSlate',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  color: Colors.amberAccent)),
          seconds: 8,
          navigateAfterSeconds: LoginPageComponent(),
          title: const Text(
            'Welcome Back !!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
          image: new Image.asset('assets/purpleSoul.png', color: Colors.yellow),
          photoSize: 200.00,
          backgroundColor: Colors.purple,
          styleTextUnderTheLoader: const TextStyle(),
        ));
  }
}
