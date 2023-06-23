import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../constants/strings.dart';
import '../constants/text_styles.dart';
import '../models/experience.dart';

class ExperienceWidget extends StatelessWidget {
  final Experience experience;

  const ExperienceWidget(this.experience, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 50,
            maxHeight: 250,
            minWidth: 100,
            maxWidth: 500,
          ),
          child: Markdown(data: experience.content),
        ),
        SafeArea(child: Markdown(data: '')),
        SizedBox(height: 20),
      ],
    );
  }
}
