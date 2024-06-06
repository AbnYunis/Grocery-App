import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/order_details/presentation/views/widgets/order_details_body.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OrderDetailsBody(),
      ),
    );
  }
}
