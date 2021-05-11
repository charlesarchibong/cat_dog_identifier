import 'package:cat_dog_identifier/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<bool> _loading = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.grey[900],
          elevation: 0,
          title: Text(
            'Cats and Dogs Detector App',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: ValueListenableBuilder(
                  valueListenable: _loading,
                  builder: (context, loading, child) {
                    return loading
                        ? Container(
                            width: double.infinity,
                            child: Column(
                              children: [
                                Image.asset(
                                  AppAsset.dogCatIcon,
                                ),
                                SizedBox(
                                  height: 50,
                                )
                              ],
                            ),
                          )
                        : Container();
                  },
                ),
              ),
              ButtonWidget(
                text: 'Capture a Photo',
                onTap: null,
              ),
              SizedBox(
                height: 15,
              ),
              ButtonWidget(
                text: 'Select Photo',
                buttonColor: Colors.yellowAccent.withOpacity(0.09),
                textColor: Colors.white,
                onTap: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color buttonColor;
  final Color textColor;
  const ButtonWidget({
    Key key,
    @required this.text,
    @required this.onTap,
    this.buttonColor = Colors.yellowAccent,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          InkWell(
            splashColor: Colors.black,
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 18,
              ),
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                '$text',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
