import 'package:grocery/core/utils/mange_routers/imports.dart';

class SignInButton extends StatelessWidget {
  final Color color;
  final String label;
  final String character;

  const SignInButton(
      {super.key,
      required this.color,
      required this.label,
      required this.character});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: 55,
      minWidth: 350.w(context),
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.w(context))),
      child: Row(
        children: [
          SizedBoxApp(
            w: 30.w(context),
          ),
          Text(
            character,
            style: GoogleFonts.abyssinicaSil(
              fontSize: 30.w(context),
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBoxApp(
            w: 30.w(context),
          ),
          Text(
            label,
            style: TextStyles.style18_400(context, CustomColor.white),
          )
        ],
      ),
    );
  }
}
