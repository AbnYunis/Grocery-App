import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/auth_customer/presentations/views/widgets/auth_customer_body.dart';

class AuthCustomerView extends StatelessWidget {
  const AuthCustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: AuthCustomerBody(),
      ),
    );
  }
}
