import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/home/presentation/views/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeBody(),
      ),
    );
  }
}
