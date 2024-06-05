import 'package:grocery/core/utils/mange_routers/imports.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h(context),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AssetService.tomato,
                scale: 3,
              ),
              SizedBoxApp(
                w: 10.w(context),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tomato',
                    style: TextStyles.style16_700(context, CustomColor.black),
                  ),
                  Text(
                    'Price',
                    style: TextStyles.style14_700(context, CustomColor.lightGrey),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Text(
                '15.50 EGP',
                style: TextStyles.style16_700(context, CustomColor.black),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 15.w(context),)),
            ],
          )
        ],
      ),
    );
  }
}
