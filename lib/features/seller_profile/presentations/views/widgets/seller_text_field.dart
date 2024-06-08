import '../../../../../core/utils/mange_routers/imports.dart';

class SellerTextField extends StatelessWidget {
  const SellerTextField({
    super.key, this.maxLength, this.hintText, required this.labelText, this.controller, this.validator, this.maxLine, this.keyboardType
  });
  final int? maxLength;
  final TextInputType? keyboardType;
  final int? maxLine;
  final String? hintText;
  final String labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText,
            style: TextStyles.style12_700(context, CustomColor.black),maxLines: 1,overflow: TextOverflow.ellipsis,),
        SizedBoxApp(
          h: 8.h(context),
        ),
        TextFormField(
          keyboardType: keyboardType,
          validator: validator,
          controller: controller,
          maxLines: maxLine??1,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText:hintText ,
            hintStyle: TextStyles.style16_400(context, CustomColor.lightGrey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.w(context)),
            ),
          ),
        )
      ],
    );
  }
}
