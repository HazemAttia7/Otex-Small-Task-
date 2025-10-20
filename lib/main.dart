import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_router.dart';

void main() {
  runApp(const OtexApp());
}

class OtexApp extends StatelessWidget {
  const OtexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.backColor,
        textTheme: GoogleFonts.tajawalTextTheme()
      ),
    );
  }
}