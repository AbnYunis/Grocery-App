import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/cart/presentation/view/widgets/checkout_row.dart';

class OrderBottomSheet extends StatelessWidget {
  const OrderBottomSheet({super.key, required this.function});
final Future<void>   Function() function;
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      const CheckoutRow(
        text: 'Delivery',
        widget: Text('Select Method'),
      ),
      CheckoutRow(
        text: 'Payment',
        widget: Container(
          width: 30.w(context),
          height: 20.h(context),
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(3),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 5.w(context),
                backgroundColor: Colors.red,
              ),
              CircleAvatar(
                radius: 5.w(context),
                backgroundColor: Colors.yellow,
              )
            ],
          ),
        ),
      ),
      const CheckoutRow(
        text: 'Promo Code',
        widget: Text('Pick Discount'),
      ),
      const CheckoutRow(
        text: 'Total Cost',
        widget: Text('13.7 \$'),
      ),
    ];
    return Padding(
      padding: EdgeInsets.all(20.w(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 24.w(context),
                ),
              ),
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const Divider(),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return items[index];
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: 4,
          ),
          Divider(),
          Text(
            'By placing an order you agree to our',
            style: TextStyles.style14_700(context, CustomColor.lightGrey),
          ),
           Text(
              'Terms And Conditions',
              style: TextStyles.style14_700(context, CustomColor.black),
            ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Home'), Text('Profile')],
          ),
          SizedBoxApp(
            h: 30.h(context),
          ),
          Center(
            child: CustomAppButton(
              text: 'Order',
              onPress: () {
                function();
                context.go(Routers.done);
              },
              width: 250.w(context),
            ),
          )
        ],
      ),
    );
  }
}
