import 'package:grocery/core/utils/mange_routers/imports.dart';

class TypeUserView extends StatelessWidget {
  const TypeUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TypeUserBody(),
      ),
    );
  }
}
