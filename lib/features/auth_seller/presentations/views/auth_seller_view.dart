import 'package:grocery/core/utils/mange_routers/imports.dart';

class AuthSellerView extends StatelessWidget {
  const AuthSellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: AuthSellerBody(),
      ),
    );
  }
}
