import 'package:grocery/core/utils/mange_routers/imports.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SplashBody(),
      ),
    );
  }
}
