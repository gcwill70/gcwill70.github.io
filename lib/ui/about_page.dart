import 'package:flutter/material.dart';

import '../constants/files.dart';
import '../constants/strings.dart';
import 'md_view.dart';
import 'summary_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 1, child: SummaryWidget()),
        Expanded(flex: 2, child: MdView(Files.content)),
        Expanded(flex: 1, child: _buildSkills(context)),
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
