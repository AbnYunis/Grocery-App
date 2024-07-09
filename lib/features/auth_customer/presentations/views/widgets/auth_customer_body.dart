import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/function/shared_data.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/auth_customer/presentations/manager/auth_customer_cubit.dart';

class AuthCustomerBody extends StatefulWidget {
  const AuthCustomerBody({super.key});

  @override
  State<AuthCustomerBody> createState() => _AuthCustomerBodyState();
}

class _AuthCustomerBodyState extends State<AuthCustomerBody> {
  bool isLogin = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController rePassController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
              AuthTextField(
                labelText: "FullName",
                controller: nameController,
              ),
              // SizedBoxApp(
              //   w: 77.w(context),
              // ),
              // const Expanded(
              //   child: AuthTextField(
              //     labelText: "LastName",
              //   ),
              // ),
              SizedBoxApp(
                h: 30.h(context),
              ),
              //const BirthDay(),
              // SizedBoxApp(
              //   h: 30.h(context),
              // ),
            ],
            AuthTextField(
              labelText: "Email",
              hintText: "JohnHenry@gmail.com",
              controller: emailController,
            ),
            SizedBoxApp(
              h: 30.h(context),
            ),
            AuthTextField(
              labelText: "Password",
              hintText: "********",
              isPassword: true,
              controller: passController,
            ),
            if (!isLogin) ...[
              SizedBoxApp(
                h: 30.h(context),
              ),
              AuthTextField(
                labelText: " Confirm Password",
                hintText: "********",
                isPassword: true,
                controller: rePassController,
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
                child: BlocConsumer<AuthCustomerCubit, AuthCustomerState>(
              listener: (context, state) {
                if (state is AuthCustomerSuccess) {
                  SharedData.saveUserName(userName: nameController.text);
                  SharedData.saveUserEmail(userEmail: emailController.text);
                  context.push(Routers.home);
                }
              },
              builder: (context, state) {
                return CustomAppButton(
                  text: isLogin ? "Login" : "Sign Up",
                  onPress: () {
                    !isLogin
                        ? context.read<AuthCustomerCubit>().register(
                            nameController.text,
                            emailController.text,
                            passController.text,
                            rePassController.text)
                        :context.read<AuthCustomerCubit>().login(emailController.text, passController.text);
                  },
                );
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
