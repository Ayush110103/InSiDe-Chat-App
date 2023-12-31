import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:inside/main.dart';
import 'package:inside/screens/auth/login_screen.dart';
import 'package:inside/screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) {
    _initializeFirebase();
    runApp(const MyApp());
  });
}
// GLobal object for analyzing screen size
late Size mq;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inside',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle:true,
          elevation:1,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle:TextStyle(
            color: Colors.black,fontWeight:FontWeight.normal,fontSize:19),
          backgroundColor: Colors.white,
          )
        ),
      home: const SplashScreen(),
      );




  }

}


_initializeFirebase() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);

}

