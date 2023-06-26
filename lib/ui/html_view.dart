import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HtmlView extends StatelessWidget {
  final String htmlKey;

  const HtmlView(this.htmlKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(htmlKey),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Html(data: snapshot.data!);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
