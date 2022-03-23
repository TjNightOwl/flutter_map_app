import 'package:flutter/material.dart';
import 'package:map_app/provider/location_provider.dart';
import 'package:provider/provider.dart';

import 'google_map_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationProvider(),
          child: MapApp(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MapApp(),
      ),
    );
  }
}
