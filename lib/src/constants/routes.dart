
import 'package:login/src/pages/login.dart';
import 'package:login/src/pages/mainPage.dart';

enum MyRoutes { login, welcome}

final routes = {
  MyRoutes.login.name: (context) => Login(),
  MyRoutes.welcome.name: (context) => MainPage(),
};