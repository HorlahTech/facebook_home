import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';
import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.white, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Color(0xFF3b5998), // Facebook blue

              scaffoldBackgroundColor: Color(0xFFf0f2f5),

              appBarTheme: AppBarTheme(
                titleSpacing: 1,
                scrolledUnderElevation: 0.0,
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.white,
                    statusBarBrightness: Brightness.light),
                color: kWhiteColor,
                iconTheme: IconThemeData(color: Colors.black87),
                elevation: 0,
                titleTextStyle: GoogleFonts.poppins(
                  color: kBlueColor,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              textTheme: TextTheme(
                headlineMedium: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3b5998),
                ),
                headlineSmall: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF3b5998), // Facebook blue
                ),
                bodyMedium: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600),
                bodySmall: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500),
              ),
            ),
            home: HomePage(),
          );
        });
  }
}
