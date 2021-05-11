import 'dart:async';

import 'package:cat_dog_identifier/core/constants/app_assets.dart';
import 'package:cat_dog_identifier/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  void navigateAfterDelay() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.homePage,
          (route) => false,
        );
      },
    );
  }

  @override
  void initState() {
    navigateAfterDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppAsset.dogCatIcon,
                ),
                Text(
                  'Cat and Dog Classifier'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
