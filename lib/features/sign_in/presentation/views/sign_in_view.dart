import 'package:grocery/core/utils/mange_routers/imports.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignInBody(),
      ),
    );
  }
}
