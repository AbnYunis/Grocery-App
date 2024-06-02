import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/sign_in/presentation/views/widgets/sign_in_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AssetService.login),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBoxApp(
                  h: 20.h(context),
                ),
                Text(
                  'Get your groceries',
                  style: TextStyles.style26_bold(context, CustomColor.black),
                ),
                SizedBoxApp(
                  h: 10.h(context),
                ),
                InkWell(
                  onTap: (){
                    context.push(Routers.number);
                  },
                  child: IntlPhoneField(
                    enabled: false,
                    decoration: const InputDecoration(),
                    initialCountryCode: 'EG',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                SizedBoxApp(
                  h: 20.h(context),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Or connect with social media',
                        style: TextStyles.style14_700(
                            context, CustomColor.lightGrey),
                      ),
                      SizedBoxApp(h: 20.h(context)),
                      const SignInButton(
                        color: Color(0xff5383EC),
                        label: 'Continue with Google',
                        character: 'G',
                      ),
                      SizedBoxApp(h: 20.h(context)),
                      const SignInButton(
                        color: Color(0xff4A66AC),
                        label: 'Continue with Facebook',
                        character: 'f',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
