import 'package:flutter/material.dart';

import 'about_page.dart';
import 'button_appbar.dart';
import 'portfolio_page.dart';

class HomePage extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    '/': (context) => Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: ButtonAppBar(),
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: AboutPage(),
          ),
        ),
    '/portfolio': (context) => Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: ButtonAppBar(),
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: PortfolioPage(),
          ),
        ),
  };

  HomePage({super.key});

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
      onGenerateRoute: (settings) {
        return PageRouteBuilder(
          settings: settings,
          transitionDuration: Duration.zero,
          transitionsBuilder: (context, anim, anim2, c) =>
              FadeTransition(opacity: anim, child: c),
          pageBuilder: (context, anim, anim2) =>
              routes[settings.name ?? '/']?.call(context) ?? Container(),
        );
      },
    );
  }
}
