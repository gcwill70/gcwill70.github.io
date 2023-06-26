import 'package:flutter/material.dart';

import '../constants/files.dart';
import 'md_view.dart';
import 'summary_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(flex: 1, child: SummaryWidget()),
        Expanded(flex: 2, child: MdView(Files.content)),
        Spacer(flex: 1),
      ],
    );
  }
}