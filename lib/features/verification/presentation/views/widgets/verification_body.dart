import 'package:grocery/core/utils/mange_routers/imports.dart';

import '../../../../../core/utils/widgets/custom_circle_button.dart';

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
            const TextField(
              maxLength: 4,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '----',
              ),
            ),
            SizedBoxApp(
              h: 100.h(context),
            ),
            CustomCircleButton(onPressed: () {}),
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
