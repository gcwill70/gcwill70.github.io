import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/images.dart';
import '../constants/links.dart';
import '../constants/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: Typography().white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return const Color.fromARGB(
                    255, 183, 179, 179); // Lighter grey color when hovered
              }
              return const Color.fromARGB(255, 78, 76, 76); // Default color
            }),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          ),
        ),
      ),
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text('Home'),
                      onPressed: () => setState(() => _controller.animateTo(0)),
                    ),
                    SizedBox(width: 30),
                    ElevatedButton(
                      child: Text('Portfolio'),
                      onPressed: () => setState(() => _controller.animateTo(1)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: IndexedStack(
            index: _controller.index,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: _buildSummary(context)),
                    Expanded(flex: 2, child: _buildContent(context)),
                    Spacer(flex: 1),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: _buildSummary(context)),
                    Expanded(flex: 2, child: _buildPortfolio(context)),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  // Body Methods:--------------------------------------------------------------
  Widget _buildSummary(BuildContext context) {
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
            window.open(Links.links["LinkedIn"]!, Links.links["LinkedIn"]!);
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
            window.open(Links.links["Github"]!, Links.links["Github"]!);
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

  Widget _buildContent(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/content.md"),
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

  Widget _buildPortfolio(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/portfolio.md"),
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
