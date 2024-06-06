import 'package:grocery/core/utils/mange_routers/imports.dart';

class CustomAppButton extends StatelessWidget {
  final String text;
  final Function() onPress;
  final double? width;

  const CustomAppButton(
      {super.key, required this.text, required this.onPress, this.width});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      height: 55,
      minWidth: width ?? 350.w(context),
      color: const Color(0xff2B894E),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.w(context))),
      child: Text(
        text,
        style: TextStyles.style20_300(context, CustomColor.white),
      ),
    );
  }
}
