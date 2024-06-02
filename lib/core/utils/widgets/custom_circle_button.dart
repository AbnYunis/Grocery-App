import 'package:grocery/core/utils/mange_routers/imports.dart';

class CustomCircleButton extends StatelessWidget {
  final Function() onPressed;

  const CustomCircleButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: Colors.green, // Button fill color
            padding: EdgeInsets.all(15.w(context)),
          ),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white, // Icon color
          ),
        ),
      ],
    );
  }
}
