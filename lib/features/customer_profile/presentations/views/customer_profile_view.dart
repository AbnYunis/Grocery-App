import 'package:grocery/core/utils/mange_routers/imports.dart';

class CustomerProfileView extends StatelessWidget {
  const CustomerProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomerProfileBody(),
      ),
    );
  }
}
