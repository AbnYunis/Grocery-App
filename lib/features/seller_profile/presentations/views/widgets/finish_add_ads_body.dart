import '../../../../../core/utils/mange_routers/imports.dart';

class FinishAddAdsBody extends StatelessWidget {
  const FinishAddAdsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetService.finishAds,
        ),
        SizedBoxApp(
          h: 20.h(context),
        ),
        Text(
          "Your advertisment was succesfully added!",
          style: TextStyles.style18_700(context, CustomColor.black),
        ),
        SizedBoxApp(
          h: 20.h(context),
        ),
        CustomAppButton(
          onPress: () {},
          text: "View your advertisement",
        ),
        SizedBoxApp(
          h: 20.h(context),
        ),
        TextButton(
            onPressed: () {
              context.go(Routers.home);
            },
            child: Text(
              "or Return to  home page",
              style: TextStyles.style18_700(context, CustomColor.green),
            )),
      ],
    );
  }
}
