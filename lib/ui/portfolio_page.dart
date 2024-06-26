import 'package:flutter/material.dart';
import 'package:personal_website/constants/files.dart';

import 'md_view.dart';
import 'summary_widget.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(flex: 1, child: SummaryWidget()),
        Expanded(flex: 2, child: MdView(Files.portfolio)),
        Spacer(flex: 1),
      ],
    );
  }
}
