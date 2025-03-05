import 'package:get/get.dart';
import 'package:homzes/screens/home_screen/home_screen.dart';
import 'package:homzes/screens/splash_screen/splash_screen.dart';
import 'package:homzes/screens/welcome_screen/welcome_screen.dart';

var appRoutes = [
  GetPage(name: "/", page: () => SplashScreen()),
  GetPage(name: "/welcome-screen", page: () => WelcomeScreen()),
  GetPage(name: "/home-screen", page: () => HomeScreen()),
];
