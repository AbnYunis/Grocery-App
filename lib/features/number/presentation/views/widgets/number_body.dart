import 'package:grocery/core/styles/text_style.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/core/utils/widgets/custom_circle_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberBody extends StatelessWidget {
  const NumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.w(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxApp(
              h: 25.h(context),
            ),
            Text(
              'Enter your mobile number',
              style: TextStyles.style26_400(context, CustomColor.black),
            ),
            SizedBoxApp(
              h: 35.h(context),
            ),
            Text(
              'Mobile number',
              style: TextStyles.style16_400(context, CustomColor.lightGrey),
            ),
            SizedBoxApp(
              h: 20.h(context),
            ),
            IntlPhoneField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(),
              initialCountryCode: 'EG',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            SizedBoxApp(
              h: 100.h(context),
            ),
            CustomCircleButton(
              onPressed: () => context.push(Routers.verification),
            ),
          ],
        ),
      ),
    );
  }
}
