import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/cart/presentation/view/widgets/cart_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20.w(context),
              color: Colors.grey,
            ),
          ),
        ),
        body: const CartBody(),
      ),
    );
  }
}
