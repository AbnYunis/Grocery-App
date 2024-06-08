import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/seller_profile/presentations/views/widgets/finish_add_ads_body.dart';

class FinishAddAdsView extends StatelessWidget {

  const FinishAddAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: FinishAddAdsBody(),),);
  }
}
