import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:payments_all_app/WelcomeScreen.dart';
import 'package:payments_all_app/utils/Theme.dart';
import 'package:payments_all_app/utils/app_layout.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{



  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
          channelGroupKey: 'basic_channel_group',
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: Color(0xFF9D50DD),
          ledColor: Colors.white
      ),

    ],
    debug:true,

  );




  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]).then((_) {
    SharedPreferences.getInstance().then((prefs) {
      var darkModeOn = prefs.getBool('darkMode') ?? true;
      runApp(
        ChangeNotifierProvider<ThemeNotifier>(
          create: (_) => ThemeNotifier(darkModeOn ? darkTheme : lightTheme),
          child: MyApp(),
        ),
      );
    });
  });

  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return GetMaterialApp(
      title: 'Payments All',

      debugShowCheckedModeBanner: false,
        theme: themeNotifier.getTheme(),
        home: AnimatedSplashScreen(
        duration: 3000,
        splash: Scaffold(
          body: Container(
            width: AppLayout.getScreenWidth(),
            height: AppLayout.getScreenHeight(),
            child: Image.asset('assets/images/splash.png',height: 250,width: 300,),
          ),
        ),
        nextScreen: WelcomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: double.maxFinite,
        backgroundColor:  Color(0xFFFFF8F8),
      )
      // WelcomeScreen(),
    );
  }
}
