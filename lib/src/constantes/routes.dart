import '../pages/login.dart';
import '../pages/homePage.dart';

enum MyRoutes { login, home }

final routes = {
  MyRoutes.login.name: (context) => Login(),
  MyRoutes.home.name: (context) => const HomePage(),
};
