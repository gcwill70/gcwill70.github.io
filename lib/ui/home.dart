import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_website_workshop/ui/education_widget.dart';
import 'package:personal_website_workshop/ui/skills_widget.dart';

import '../constants/images.dart';
import '../constants/fonts.dart';
import '../constants/links.dart';
import '../constants/strings.dart';
import '../constants/text_styles.dart';
import '../utils/screen/screen_utils.dart';
import 'experience_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xFFF7F8FA),
      routes: {
        '/': (context) => Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.all(50),
                child: SingleChildScrollView(
                  child: _buildContent(context),
                ),
              ),
            ),
        '/portfolio': (context) => Container(),
      },
    );
  }

  // Body Methods:--------------------------------------------------------------
  Widget _buildContent(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildAboutMe(context),
          SizedBox(height: 10.0),
          _buildSocialIcons(context),
        ],
      ),
    );
  }

  Widget _buildAboutMe(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(Images.programmer3, height: 245),
        SizedBox(height: 4.0),
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 14.0, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: Strings.firstName,
                style: TextStyles.heading.copyWith(
                  fontFamily: Fonts.nexaLight,
                  fontSize: 36,
                ),
              ),
              TextSpan(
                text: Strings.lastName,
                style: TextStyles.heading.copyWith(
                  color: Color(0xFF50AFC0),
                  fontSize: 36,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.0),
        Text(Strings.headline, style: TextStyles.subheading),
        SizedBox(height: 4.0),
        Padding(
          padding: EdgeInsets.only(right: 80.0),
          child: Text(Strings.summary, style: TextStyles.body),
        ),
      ],
    );
  }

  Widget _buildSocialIcons(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            window.open(Links.links["LinkedIn"]!, Links.links["LinkedIn"]!);
          },
          child: Image.network(
            Images.linkedin,
            color: Color(0xFF45405B),
            height: 20.0,
            width: 20.0,
          ),
        ),
        SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            window.open(Links.links["Github"]!, Links.links["Github"]!);
          },
          child: Image.network(
            Images.github,
            color: Color(0xFF45405B),
            height: 20.0,
            width: 20.0,
          ),
        ),
        SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            window.open(Links.links["Overleaf"]!, "Resume");
          },
          child: Image.network(
            Images.overleaf,
            color: Color(0xFF45405B),
            height: 20.0,
            width: 20.0,
          ),
        ),
      ],
    );
  }
}
