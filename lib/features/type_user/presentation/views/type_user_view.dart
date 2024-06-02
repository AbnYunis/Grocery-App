import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/type_user/presentation/views/widgets/type_user_body.dart';

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
