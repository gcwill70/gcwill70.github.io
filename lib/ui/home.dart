import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:personal_website_workshop/ui/skills_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: _buildSummary(context)),
              Expanded(
                flex: 2,
                child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("assets/content.md"),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Markdown(
                        data: snapshot.data!,
                        onTapLink: (text, url, title) {
                          if (url != null) {
                            launchUrl(Uri.parse(url));
                          }
                        },
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: Strings.experienceList
          .map((experience) => ExperienceWidget(experience))
          .toList(),
    );
  }

  // Body Methods:--------------------------------------------------------------
  Widget _buildSummary(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAboutMe(context),
        SizedBox(height: 10.0),
        _buildLinks(context),
      ],
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
          child: Text(
            Strings.summary,
            style: TextStyles.body,
          ),
        ),
      ],
    );
  }

  Widget _buildLinks(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
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
        // SizedBox(width: 16.0),
        // GestureDetector(
        //   onTap: () {
        //     window.open(Links.links["Overleaf"]!, "Resume");
        //   },
        //   child: Image.network(
        //     Images.overleaf,
        //     color: Color(0xFF45405B),
        //     height: 20.0,
        //     width: 20.0,
        //   ),
        // ),
      ],
    );
  }
}
