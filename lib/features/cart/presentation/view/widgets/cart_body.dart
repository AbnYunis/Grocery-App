import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/cart/presentation/view/widgets/cart_item.dart';
import 'package:grocery/features/cart/presentation/view/widgets/order_bottom_sheet.dart';

import '../../../../../core/utils/widgets/custom_app_button.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w(context)),
      child: Column(
        children: [
          Center(
            child: Text(
              'My Cart',
              style: TextStyles.style20_700(context, CustomColor.black),
            ),
          ),
          SizedBoxApp(
            h: 25.h(context),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const CartItem();
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 4),
          const Spacer(),
          CustomAppButton(
            text: 'Order',
            onPress: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Wrap(children: [OrderBottomSheet()]);
                  });
            },
            width: 250.w(context),
          ),
          SizedBoxApp(
            h: 100.h(context),
          )
        ],
      ),
    );
  }
}
