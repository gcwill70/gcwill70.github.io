import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  final List<String> skills;

  const SkillsWidget(this.skills, {super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: skills
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
    );
  }
}
