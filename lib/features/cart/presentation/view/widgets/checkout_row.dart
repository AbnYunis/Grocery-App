import 'package:grocery/core/utils/mange_routers/imports.dart';

class CheckoutRow extends StatelessWidget {
  final String text;
  final Widget widget;

  const CheckoutRow({super.key, required this.text, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 7.h(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyles.style18_400(context, CustomColor.lightGrey),
          ),
          Row(
            children: [
             widget,
               SizedBoxApp(w: 12.w(context),),
               Icon(Icons.arrow_forward_ios,size: 15.w(context),),
            ],
          ),
        ],
      ),
    );
  }
}
