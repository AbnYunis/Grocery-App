import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/home/data/models/products_model.dart';

class CustomHomeItem extends StatelessWidget {
  const CustomHomeItem({super.key, required this.index, required this.product});

  final int index;
  final Product product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int kgs = 1;
    return GestureDetector(
      onTap: () {
        context.push(Routers.order, extra: {'id': product.id});
      },
      child: SizedBox(
        width: size.width / 2.2,
        child: Card(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: size.height / size.width,
                child: CachedNetworkImage(
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
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 8.w(context), right: 8.w(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyles.style20_300(context, CustomColor.black),
                    ),
                    Text(
                      '$kgs KG',
                      style: TextStyles.style20_700(
                          context, CustomColor.lightGrey),
                    ),
                    Row(
                      children: [
                        Text(
                          '${product.price} EGP',
                          style: TextStyles.style20_300(
                              context, CustomColor.black),
                        ),
                        SizedBoxApp(
                          w: 10.w(context),
                        ),
                        Text(
                          '${product.comparePrice}',
                          style: TextStyle(
                            fontSize: 15.w(context),
                            color: const Color(0xFFA5A5A5),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '',
                          style: TextStyle(
                              fontSize: 10.w(context),
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red),
                        ),
                        SizedBoxApp(
                          w: 25.w(context),
                        ),
                        SizedBox(
                          width: 30.w(context),
                          height: 30.w(context),
                          child: FloatingActionButton(
                            heroTag: '$index',
                            onPressed: () {
                              context.push(Routers.order);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(50.w(context)),
                            ),
                            mini: true,
                            backgroundColor: Colors.green,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
