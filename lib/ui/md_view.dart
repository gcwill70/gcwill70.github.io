import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class MdView extends StatelessWidget {
  final String mdKey;

  const MdView(this.mdKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(mdKey),
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
    );
  }
}
