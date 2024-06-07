import 'package:grocery/core/utils/mange_routers/imports.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              AssetService.tomato,
              scale: 3,
            ),
            SizedBoxApp(
              w: 15.w(context),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100.w(context),
                  child: Text(
                    'Tomato',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.style16_700(context, CustomColor.black),
                  ),
                ),
                Text(
                  '30 EGP',
                  style: TextStyles.style16_700(context, CustomColor.lightGrey),
                )
              ],
            ),
          ],
        ),
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 25.w(context),
                height: 25.w(context),
                child: FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.w(context)),
                  ),
                  mini: true,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    size: 20.w(context),
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w(context)),
                child: Text(
                  '1 KG',
                  style: TextStyles.style20_700(context, CustomColor.black),
                ),
              ),
              SizedBox(
                width: 25.w(context),
                height: 25.w(context),
                child: FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.w(context)),
                  ),
                  mini: true,
                  backgroundColor: Colors.green,
                  child: Icon(
                    size: 20.w(context),
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {

                },
                child: const Icon(
                    Icons.delete_outline_sharp,
                    color: Colors.grey,
                  ),
              ),

            ],
          ),
        )
      ],
    );
  }
}
