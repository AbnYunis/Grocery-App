import 'package:grocery/core/utils/mange_routers/imports.dart';


class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(
          15.w(context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxApp(
              h: 25.h(context),
            ),
            Text(
              'Enter your 4-digit code',
              style: TextStyles.style26_400(context, CustomColor.black),
            ),
            SizedBoxApp(
              h: 35.h(context),
            ),
            Text(
              'Code',
              style: TextStyles.style16_400(context, CustomColor.lightGrey),
            ),
            SizedBoxApp(
              h: 5.h(context),
            ),
             TextFormField(
              maxLength: 4,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: '----',
              ),
            ),
            SizedBoxApp(
              h: 100.h(context),
            ),
            CustomCircleButton(onPressed: () {context.push(Routers.selectLocation);}),
            SizedBoxApp(
              h: 50.h(context),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Resend Code',
                  style: TextStyles.style18_400(context, CustomColor.green),
                ))
          ],
        ),
      ),
    );
  }
}
