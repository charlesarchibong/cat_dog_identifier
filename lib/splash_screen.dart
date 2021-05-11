import 'package:cat_dog_identifier/core/constants/app_assets.dart';
import 'package:cat_dog_identifier/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      routeName: Routes.homePage,
      image: Image.asset(
        AppAsset.dogCatIcon,
      ),
      backgroundColor: Colors.blueAccent,
      photoSize: 60,
      loaderColor: Color(0x004242),
      title: Text(
        'Cat and Dog Classifier',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Color(0x00FFFF),
        ),
      ),
    );
  }
}
