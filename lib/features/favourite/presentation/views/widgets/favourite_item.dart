import 'package:grocery/core/utils/mange_routers/imports.dart';

import '../../../../home/data/models/products_model.dart';

class FavouriteItem extends StatelessWidget {
  final Product product;

  const FavouriteItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CachedNetworkImage(
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.black54,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                fit: BoxFit.fill,
                imageUrl: product.productImage,
                errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.error)),
              ),
              SizedBoxApp(
                w: 10.w(context),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyles.style16_700(context, CustomColor.black),
                  ),
                  Text(
                    'Price', // You can replace this with actual product price if available
                    style: TextStyles.style14_700(context, CustomColor.lightGrey),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Text(
                product.price.toString(), // Replace this with actual product price if available
                style: TextStyles.style16_700(context, CustomColor.black),
              ),
              IconButton(
                onPressed: () {
                  // Navigate to product details
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 15.w(context),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
