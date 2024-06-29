import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zometo_app/screens/offer_page/offer_page.dart';

void main()
{
  runApp(zometoApp());
}
class zometoApp extends StatelessWidget {
  const zometoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => offerPage(),
      },
    );
  }
}
