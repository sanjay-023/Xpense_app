import 'package:flutter/material.dart';
import 'package:xpense_app/screens/splash%20screen/screen_splash.dart';

final saveKey = 'profile name';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: const ScreenSplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
