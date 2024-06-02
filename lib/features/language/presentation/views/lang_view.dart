import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/language/presentation/views/widgets/lang_body.dart';

class LangView extends StatelessWidget {
  const LangView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: LangBody(),

      ),
    );
  }
}
