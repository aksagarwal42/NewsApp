import 'package:conmetlabs_news/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'discover.dart';
import 'homepage.dart';
import 'splash.dart';

void main() {
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
