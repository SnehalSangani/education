import 'package:education/screens/home/provider/home_provider.dart';
import 'package:education/screens/web/view/web_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home/view/home_Screen.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home(),
          'web':(context) => web(),
        },
      ),
    )
  );
}