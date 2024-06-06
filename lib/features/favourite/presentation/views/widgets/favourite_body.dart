import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/core/utils/widgets/custom_app_button.dart';
import 'package:grocery/features/favourite/presentation/views/widgets/favourite_item.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.w(context)),
      child: Column(
        children: [
          Center(
            child: Text(
              'Favourite',
              style: TextStyles.style20_700(context, CustomColor.black),
            ),
          ),
          SizedBoxApp(
            h: 15.h(context),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const FavouriteItem();
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 4),
          const Spacer(),
          CustomAppButton(text: 'Add All To Cart',onPress: (){},),
          SizedBoxApp(
            h: 100.h(context),
          )
        ],
      ),
    );
  }
}
