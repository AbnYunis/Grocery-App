import 'package:grocery/core/utils/mange_routers/imports.dart';


class TypeUserBody extends StatelessWidget {
  const TypeUserBody({super.key});

  @override
  Widget build(BuildContext context) {
    //String _selectType = 'Customer';
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
                'Select Type',
                style: TextStyles.style26Bold(context, CustomColor.black),
              ),
              SizedBoxApp(
                h: 10.h(context),
              ),
              const CustomRadioTile(text: 'type'),
              const Divider(),
              SizedBoxApp(
                h: 20.h(context),
              ),
              CustomCircleButton(
                onPressed: () => context.go(Routers.signIn),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
