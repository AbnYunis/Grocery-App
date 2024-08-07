import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/function/shared_data.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/home/data/models/products_model.dart';
import 'package:grocery/features/home/data/repos/home_repo_implement.dart';
import 'package:grocery/features/home/presentation/managers/add_to_cart/add_product_to_cart_cubit.dart';
import 'package:grocery/features/home/presentation/managers/get_product/get_product_cubit.dart';
import 'package:grocery/features/order_details/presentation/views/widgets/details_row.dart';
import 'package:grocery/features/order_details/presentation/views/widgets/order_details_appbar.dart';
import 'package:grocery/features/order_details/presentation/views/widgets/review_raw.dart';

import '../../../../../core/utils/function/service_locator.dart';

class OrderDetailsBody extends StatefulWidget {
  const OrderDetailsBody({super.key});

  @override
  State<OrderDetailsBody> createState() => _OrderDetailsBodyState();
}

class _OrderDetailsBodyState extends State<OrderDetailsBody> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    int? quantity = 1;
    final size = MediaQuery.of(context).size;
    final extraData = GoRouterState.of(context).extra as Map<String, dynamic>?;
    return SingleChildScrollView(
      child: BlocProvider(
        create: (context) => GetProductCubit(sl<HomeRepoImplement>())
          ..getProduct(extraData!['id']),
        child: Padding(
          padding: EdgeInsets.all(15.w(context)),
          child: BlocConsumer<GetProductCubit, GetProductState>(
            listener: (context, state) {
            },
            builder: (context, state) {
              if (state is GetProductFailure) {
                return Center(
                  child: Text(state.message),
                );
              } else if (state is GetProductSuccess) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OrderDetailsAppbar(),
                    Center(
                      child: AspectRatio(
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
                          imageUrl: state.product.productImage,
                          errorWidget: (context, url, error) =>
                              const Center(child: Icon(Icons.error)),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          state.product.name,
                          style: TextStyles.style20_400(
                              context, CustomColor.black),
                        ),
                        SizedBoxApp(
                          w: 15.w(context),
                        ),
                        IconButton(
                          onPressed: () {
                            isFavorite?SharedData.removeFaveData(state.product.id.toString()):SharedData.saveFaveData(state.product);
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            size: 25.w(context),
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    DetailsRow(
                      product: state.product,
                      getKgs: (q) {
                        state.product.quantity = q!;
                      },
                    ),
                    const ReviewRaw(),
                    Text(
                      'Description',
                      style: TextStyles.style20_400(context, CustomColor.black),
                    ),
                    Text(
                      state.product.description,
                      style: TextStyles.style17_400(
                          context, CustomColor.lightGrey),
                    ),
                    SizedBoxApp(
                      h: 25.h(context),
                    ),
                    // const DetailsListview(),
                    SizedBoxApp(
                      h: 15.h(context),
                    ),
                    Center(
                      child: CustomAppButton(
                        text: 'Add to cart',
                        onPress: () async{
                          SharedData.saveAddToCartData(state.product);
                        },
                        width: 250.w(context),
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
