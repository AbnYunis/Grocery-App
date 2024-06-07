import 'package:grocery/core/utils/mange_routers/imports.dart';


class LangBody extends StatelessWidget {
  const LangBody({super.key});

  @override
  Widget build(BuildContext context) {
   // String _selectedLanguage = 'English';
    return Column(
      children: [
        Image.asset(AssetService.login),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBoxApp(
                h: 10.h(context),
              ),
              Text(
                'Select Language',
                style: TextStyles.style26Bold(context, CustomColor.black),
              ),
              SizedBoxApp(
                h: 10.h(context),
              ),
              const CustomRadioTile(text: 'lan',),
              const Divider(),
              SizedBoxApp(
                h: 20.h(context),
              ),
              CustomCircleButton(
                onPressed: () => context.go(Routers.typeUser),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
