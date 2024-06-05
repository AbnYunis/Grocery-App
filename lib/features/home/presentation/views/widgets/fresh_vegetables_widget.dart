import 'package:grocery/core/utils/mange_routers/imports.dart';
class FreshVegetablesWidget extends StatelessWidget {
  const FreshVegetablesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.w(context),
            ),
          ),
          child: Image.asset(AssetService.vegetables),
        ),
        Positioned(
          top: 10.h(context),
          left: 7.w(context),
          child: Column(
            children: [
              Text(
                'Fresh Vegetables',
                style:
                TextStyles.style20_700(context, CustomColor.black),
              ),
              Text(
                'Get Up To 40% OFF',
                style:
                TextStyles.style15_400(context, CustomColor.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 7.w(context),
          child: MaterialButton(
            height: 35.h(context),
            color: Colors.white,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15.w(context),
              ),
            ),
            child: Text(
              'Buy now',
              style: TextStyles.style20_300(context, CustomColor.green),
            ),
          ),
        ),
      ],
    );
  }
}
