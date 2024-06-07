import 'package:grocery/core/utils/mange_routers/imports.dart';

Future showDialogFun(context,widget){
   return showDialog(

    context: context,
    builder: (context) {
      return AlertDialog(

        contentPadding: EdgeInsets.symmetric(
            horizontal: 15.w(context), vertical: 15.h(context)),
        content:  widget,
      );
    },
  );
}