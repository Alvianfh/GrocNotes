import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/screen/biometric.dart';
import 'package:notes/screen/home.dart';
import 'package:notes/screen/splash.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:supercharged/supercharged.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes',
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: '1E2F97'.toColor()),
          primaryColor: Colors.white,
          scaffoldBackgroundColor: 'ECECEC'.toColor(),
        ),
        home: Splash(),
        builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidth: 1200,
              minWidth: 550,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.autoScaleDown(550, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
              ],
            ),
        routes: {
          Splash.id: (context) => Splash(),
          biometric.id: (context) => biometric()
        });
  }
}
