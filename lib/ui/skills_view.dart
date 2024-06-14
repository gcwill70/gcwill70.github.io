import 'package:flutter/material.dart';

import '../constants/strings.dart';
import 'skills_widget.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('Languages', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 5),
        SkillsWidget(Strings.languages),
        SizedBox(height: 20),
        Text('Frameworks', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 5),
        SkillsWidget(Strings.frameworks),
        SizedBox(height: 20),
        Text('Frontend', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 5),
        SkillsWidget(Strings.frontend),
        SizedBox(height: 20),
        Text('Backend', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 5),
        SkillsWidget(Strings.backend),
        SizedBox(height: 20),
        Text('Mobile', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 5),
        SkillsWidget(Strings.mobile),
        SizedBox(height: 20),
        Text('DevOps & Tools', style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: 5),
        SkillsWidget(Strings.devops),
        SizedBox(height: 20),
      ],
    );
  }
}
