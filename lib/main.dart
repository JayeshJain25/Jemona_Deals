import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jemona_deals/screen/phone_number_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Jemona Deals',
            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(),
          );
        });
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    displaySplash();
  }

  displaySplash() {
    Timer(const Duration(seconds: 3), () async {
      // if (user != null) {
      //   Route route = MaterialPageRoute(builder: (_) => const HomeScreen());
      //   Navigator.pushReplacement(context, route);
      // } else if (adminLogined != null && adminLogined!) {
      //   Route route =
      //       MaterialPageRoute(builder: (_) => const AdminHomeScreen());
      //   Navigator.pushReplacement(context, route);
      // } else {
      //   Route route =
      //       MaterialPageRoute(builder: (_) => const AuthenticateScreen());
      //   Navigator.pushReplacement(context, route);
      // }
      Route route =
          MaterialPageRoute(builder: (_) => const PhoneNumberScreen());
      Navigator.pushReplacement(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF580a2c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Jemona Deals",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 30.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
