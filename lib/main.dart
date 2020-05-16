import 'package:flutter/material.dart';

import 'buy_page2.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chair Ecom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Vazir"),
      initialRoute: '/',
      routes: {
        '/': (context) =>
            Directionality(textDirection: TextDirection.rtl, child: HomePage()),
        '/buy_page': (context) =>
            Directionality(textDirection: TextDirection.rtl, child: BuyPage2()),
      },
      //home: HomePage(),
    );
  }
}
