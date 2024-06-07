import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/order_details/presentation/views/widgets/details_listview.dart';
import 'package:grocery/features/order_details/presentation/views/widgets/details_row.dart';
import 'package:grocery/features/order_details/presentation/views/widgets/order_details_appbar.dart';
import 'package:grocery/features/order_details/presentation/views/widgets/review_raw.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.w(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OrderDetailsAppbar(),
            Center(
              child: Image.asset(
                AssetService.tomato,
                scale: .7,
              ),
            ),
            Row(
              children: [
                Text(
                  'Tomato',
                  style: TextStyles.style20_400(context, CustomColor.black),
                ),
                SizedBoxApp(
                  w: 15.w(context),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    size: 25.w(context),
                  ),
                ),
              ],
            ),
            const DetailsRow(),
            const ReviewRaw(),
            Text(
              'Description',
              style: TextStyles.style20_400(context, CustomColor.black),
            ),
            Text(
              'This text is an example of text that can be replaced in the same space. This text was generated from the Arabic text generator,',
              style: TextStyles.style17_400(context, CustomColor.lightGrey),
            ),
            SizedBoxApp(
              h: 25.h(context),
            ),
            const DetailsListview(),
            SizedBoxApp(
              h: 15.h(context),
            ),
            Center(
              child: CustomAppButton(
                text: 'Add to cart',
                onPress: () {},
                width: 250.w(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
