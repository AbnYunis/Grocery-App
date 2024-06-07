import 'package:grocery/core/utils/mange_routers/imports.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    this.hintText = "",
    required this.labelText,
    this.controller,
    this.validator,
    this.isPassword = false,
  });

  final String? hintText;
  final String labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? isPassword;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool isShown = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: TextStyles.style16_700(context, CustomColor.darkGrey),
        ),
        SizedBoxApp(
          h: 10.h(context),
        ),
        TextFormField(
          obscureText: isShown,
          validator: widget.validator,
          controller: widget.controller,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword!
                ? IconButton(
              onPressed: () {
                setState(() {
                  isShown = !isShown;
                });
              },
              icon: isShown
                  ? const Icon(Icons.visibility_outlined)
                  : const Icon(Icons.visibility_off_outlined),
            )
                : null,
            hintText: widget.hintText,
            hintStyle:
            TextStyles.abeezeeStyle13_400(context, CustomColor.lightGrey),
          ),
        )
      ],
    );
  }
}