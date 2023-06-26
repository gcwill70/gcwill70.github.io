import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/images.dart';
import '../constants/links.dart';
import '../constants/strings.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAboutMe(context),
        SizedBox(height: 10.0),
        _buildLinks(context),
        SizedBox(height: 40.0),
        _buildSkills(context),
      ],
    );
  }

  Widget _buildAboutMe(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(Images.photo, height: 345),
        SizedBox(height: 4.0),
        Text(
          Strings.name,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        SizedBox(height: 4.0),
        Text(
          Strings.title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(height: 4.0),
        Text(
          Strings.subtitle,
          style: Theme.of(context).textTheme.bodyLarge,
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
            launchUrl(Uri.parse(Links.links["LinkedIn"]!));
          },
          child: Image.network(
            Images.linkedin,
            color: Colors.white,
            width: 40.0,
          ),
        ),
        SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse(Links.links["Github"]!));
          },
          child: Image.network(
            Images.github,
            color: Colors.white,
            width: 40.0,
          ),
        ),
        SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            AnchorElement elem = AnchorElement(href: Links.links["Resume"]);
            elem.download = "Resume";
            elem.click();
          },
          child: Image.network(
            Images.resume,
            color: Colors.white,
            width: 40.0,
          ),
        ),
      ],
    );
  }

  Widget _buildSkills(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Wrap(
        children: Strings.skills
            .map((skill) => Padding(
                  padding: EdgeInsets.only(right: 8.0, bottom: 10),
                  child: Chip(
                    label: Text(
                      skill,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
