import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homzes/firebase_options.dart';
import 'package:homzes/routes/app_route.dart';
import 'package:homzes/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      defaultTransition: Transition.fadeIn,
      getPages: appRoutes,
      initialRoute: '/',
    );
  }
}
