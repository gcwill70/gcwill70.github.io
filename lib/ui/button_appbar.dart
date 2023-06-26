import 'package:flutter/material.dart';

class ButtonAppBar extends StatelessWidget {
  const ButtonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            SizedBox(width: 30),
            ElevatedButton(
              child: Text('Portfolio'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/portfolio');
              },
            ),
          ],
        ),
      ),
    );
  }
}
