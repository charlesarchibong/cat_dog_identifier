import 'package:cat_dog_identifier/core/navigation/route_names.dart';
import 'package:cat_dog_identifier/core/navigation/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat and Dog Classifier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splashScreen,
      onGenerateRoute: generateRoute,
    );
  }
}
