import '../utils/mange_routers/imports.dart';

enum CustomColor { white, black, lightGrey, darkGrey, green, red }

extension CustomColorExtension on CustomColor {
  Color toColor() {
    switch (this) {
      case CustomColor.white:
        return Colors.white;
      case CustomColor.black:
        return const Color(0xFF030303);
      case CustomColor.darkGrey:
        return const Color(0xFF7C7C7C);
      case CustomColor.lightGrey:
        return const Color(0xFFA5A5A5);
      case CustomColor.green:
        return const Color(0xFF2B894E);
      case CustomColor.red:
        return const Color(0xFFBB3434);
      default:
        return Colors.black;
    }
  }
}

class TextStyles {
  //almarai text style
  static TextStyle _almarai(BuildContext context, double fontSize,
      FontWeight fontWeight, CustomColor color) {
    return GoogleFonts.almarai(
      color: color.toColor(),
      fontSize: fontSize.w(context),
      fontWeight: fontWeight,
    );
  }

  // inter font style
  static TextStyle _inter(BuildContext context, double fontSize,
      FontWeight fontWeight, CustomColor color) {
    return GoogleFonts.inter(
      color: color.toColor(),
      fontSize: fontSize.w(context),
      fontWeight: fontWeight,
    );
  }

  // abeezee font style
  static TextStyle _abeezee(BuildContext context, double fontSize,
      FontWeight fontWeight, CustomColor color) {
    return GoogleFonts.aBeeZee(
      color: color.toColor(),
      fontSize: fontSize.w(context),
      fontWeight: fontWeight,
    );
  }

//almarai styles
  //font 40
  static TextStyle style40_800(BuildContext context, CustomColor color) {
    return _almarai(context, 40, FontWeight.w800, color);
  }

  //font 75
  static TextStyle style75_700(BuildContext context, CustomColor color) {
    return _almarai(context, 75, FontWeight.w700, color);
  }

  //font 32
  static TextStyle style32_400(BuildContext context, CustomColor color) {
    return _almarai(context, 32, FontWeight.w400, color);
  }

  //font 26
  static TextStyle style26_700(BuildContext context, CustomColor color) {
    return _almarai(context, 26, FontWeight.w700, color);
  }

  static TextStyle style26_400(BuildContext context, CustomColor color) {
    return _almarai(context, 26, FontWeight.w400, color);
  }

  //font 23
  static TextStyle style23_700(BuildContext context, CustomColor color) {
    return _almarai(context, 23, FontWeight.w700, color);
  }

  //font 20
  static TextStyle style20_700(BuildContext context, CustomColor color) {
    return _almarai(context, 20, FontWeight.w700, color);
  }

  static TextStyle style20_400(BuildContext context, CustomColor color) {
    return _almarai(context, 20, FontWeight.w400, color);
  }

  static TextStyle style20_300(BuildContext context, CustomColor color) {
    return _almarai(context, 20, FontWeight.w300, color);
  }

  //font 18
  static TextStyle style18_700(BuildContext context, CustomColor color) {
    return _almarai(context, 18, FontWeight.w700, color);
  }

  static TextStyle style18_400(BuildContext context, CustomColor color) {
    return _almarai(context, 18, FontWeight.w400, color);
  }

  //font 17
  static TextStyle style17_400(BuildContext context, CustomColor color) {
    return _almarai(context, 17, FontWeight.w400, color);
  }

  //font 16
  static TextStyle style16_700(BuildContext context, CustomColor color) {
    return _almarai(context, 16, FontWeight.w700, color);
  }

  static TextStyle style16_400(BuildContext context, CustomColor color) {
    return _almarai(context, 16, FontWeight.w400, color);
  }

  static TextStyle style16_300(BuildContext context, CustomColor color) {
    return _almarai(context, 16, FontWeight.w300, color);
  }

  //font 15
  static TextStyle style15_400(BuildContext context, CustomColor color) {
    return _almarai(context, 15, FontWeight.w400, color);
  }

  //font 14
  static TextStyle style14_700(BuildContext context, CustomColor color) {
    return _almarai(context, 14, FontWeight.w700, color);
  }

  //font 13
  static TextStyle style13_400(BuildContext context, CustomColor color) {
    return _almarai(context, 13, FontWeight.w400, color);
  }

  //font 12
  static TextStyle style12_700(BuildContext context, CustomColor color) {
    return _almarai(context, 12, FontWeight.w700, color);
  }

  static TextStyle style12_400(BuildContext context, CustomColor color) {
    return _almarai(context, 12, FontWeight.w400, color);
  }

  //font 10
  static TextStyle style10_400(BuildContext context, CustomColor color) {
    return _almarai(context, 10, FontWeight.w400, color);
  }

//inter styles
  //font 18
  static TextStyle interStyle18_400(BuildContext context, CustomColor color) {
    return _inter(context, 18, FontWeight.w400, color);
  }

//abeezee styles
  //font 20
  static TextStyle abeezeeStyle20_400(BuildContext context, CustomColor color) {
    return _abeezee(context, 20, FontWeight.w400, color);
  }

  //font 13
  static TextStyle abeezeeStyle13_400(BuildContext context, CustomColor color) {
    return _abeezee(context, 13, FontWeight.w400, color);
  }
}
