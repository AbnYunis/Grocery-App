import 'package:grocery/core/utils/mange_routers/imports.dart';

class AuthCustomerBody extends StatefulWidget {
  const AuthCustomerBody({super.key});

  @override
  State<AuthCustomerBody> createState() => _AuthCustomerBodyState();
}

class _AuthCustomerBodyState extends State<AuthCustomerBody> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 25.w(context), vertical: 25.h(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AssetService.authLogo,
                width: 100.w(context),
                height: 100.h(context),
              ),
            ),
            SizedBoxApp(
              h: 20.h(context),
            ),
            Text(
              isLogin ? 'Login' : "Sign Up",
              style: TextStyles.style26_700(context, CustomColor.black),
            ),
            SizedBoxApp(
              h: 15.h(context),
            ),
            Text(
              isLogin
                  ? 'Enter your emails and password'
                  : "Enter your credentials to continue",
              style: TextStyles.style16_300(context, CustomColor.lightGrey),
            ),
            SizedBoxApp(
              h: 20.h(context),
            ),
            if (!isLogin) ...[
              Row(
                children: [
                  const Expanded(
                    child: AuthTextField(
                      labelText: "FirstName",
                    ),
                  ),
                  SizedBoxApp(
                    w: 77.w(context),
                  ),
                  const Expanded(
                    child: AuthTextField(
                      labelText: "LastName",
                    ),
                  ),
                ],
              ),
              SizedBoxApp(
                h: 30.h(context),
              ),
              //const BirthDay(),
              // SizedBoxApp(
              //   h: 30.h(context),
              // ),
            ],
            const AuthTextField(
              labelText: "Email",
              hintText: "JohnHenry@gmail.com",
            ),
            SizedBoxApp(
              h: 30.h(context),
            ),
            const AuthTextField(
              labelText: "Password",
              hintText: "********",
              isPassword: true,
            ),
            if (!isLogin) ...[
              SizedBoxApp(
                h: 30.h(context),
              ),
              const AuthTextField(
                labelText: " Confirm Password",
                hintText: "********",
                isPassword: true,
              ),
              SizedBoxApp(
                h: 30.h(context),
              ),
              Text(
                "By continuing you agree to our Terms of Service and Privacy Policy.",
                style: TextStyles.style14_700(context, CustomColor.lightGrey),
              )
            ],
            SizedBoxApp(
              h: 64.h(context),
            ),
            Center(
                child: CustomAppButton(
              text: isLogin?"Login":"Sign Up",
              onPress: () {
                context.push(Routers.home);
              },
            )),
            SizedBoxApp(
              h: 47.h(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isLogin
                      ? "Don’t have an account?"
                      : "Already have an account?",
                  style: TextStyles.style16_300(context, CustomColor.black),
                ),
                SizedBoxApp(
                  w: 5.w(context),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: Text(
                    isLogin ? "Sign Up" : "Sign In",
                    style: TextStyles.style16_700(context, CustomColor.green),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
