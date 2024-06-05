import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/favourite/presentation/views/widgets/favourite_body.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: FavouriteBody(),
      ),
    );
  }
}
