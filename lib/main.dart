import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prototype1/screens/home/guides.dart';
import 'package:prototype1/screens/home/home.dart';
import 'package:prototype1/screens/home/homeQuiz.dart';
import 'package:prototype1/screens/home/hotline.dart';
import 'package:prototype1/screens/wrapper.dart';
import 'package:prototype1/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:prototype1/models/user.dart';
import 'package:flutter/services.dart';

Future <void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  await Firebase.initializeApp();
  runApp(MyApp());
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return StreamProvider<MyUser?>.value(
      catchError: (_, __) => null,
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        navigatorObservers: [routeObserver],
        initialRoute: '/',
        routes: {
          '/guides':(context) => guides(),
          //'/enum':(context) => hotlines(),
        },
      ),
    );
  }
}

