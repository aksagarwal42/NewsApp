import 'package:conmetlabs_news/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/discover.dart';
import 'screens/homepage.dart';
import 'screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/discover': (context) => DiscoverPage(),
        '/search': (context) => Search(),
      },
    );
  }
}
