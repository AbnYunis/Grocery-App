import 'package:grocery/core/utils/mange_routers/imports.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchBody(),

      ),
    );
  }
}
