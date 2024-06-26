import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janrealism/service/firestore_service.dart';
import 'package:janrealism/splash.dart';
import 'package:janrealism/view/login/login.dart';
import 'package:uuid/uuid.dart';
import 'firebase_options.dart';

// Add firebase initialization here
Future<void> main() async {
// Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  
  
  
 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const SplashScreen(),
    );
  }
}
