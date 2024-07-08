import 'package:grocery/core/utils/mange_routers/imports.dart';

class ViewAllWidget extends StatelessWidget {
  final
   String text;
  const ViewAllWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyles.style18_700(context, CustomColor.black),
        ),
        // TextButton(
        //   onPressed: () {},
        //   child: Row(
        //     children: [
        //       Text(
        //         'View all ',
        //         style: TextStyles.style15_400(context, CustomColor.green),
        //       ),
        //       Icon(
        //         Icons.arrow_forward_ios,
        //         color: Color(0xFF2B894E),
        //         size: 15.w(context),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
