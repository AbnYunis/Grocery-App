import 'package:grocery/core/utils/function/animation_page.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';

abstract class Routers {
  static const lang = '/lang';
  static const typeUser = '/typeUser';
  static const signIn = '/signIn';
  static const number = '/number';
  static const verification = '/verification';
  static const home = '/home';

  static GoRoute goRouteFade(Widget screen, String path) {
    return GoRoute(
      path: path,
      builder: (context, state) => screen,
      pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
        context: context,
        state: state,
        child: screen,
      ),
    );
  }

  static GoRoute goRouteSlide(Widget screen, String path) {
    return GoRoute(
      path: path,
      builder: (context, state) => screen,
      pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
        context: context,
        state: state,
        child: screen,
      ),
    );
  }
}
