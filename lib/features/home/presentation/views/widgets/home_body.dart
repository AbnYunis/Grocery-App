import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/home/presentation/views/widgets/custom_home_item.dart';
import 'package:grocery/features/home/presentation/views/widgets/fresh_vegetables_widget.dart';
import 'package:grocery/features/home/presentation/views/widgets/home_appbar.dart';
import 'package:grocery/features/home/presentation/views/widgets/view_all_widget.dart';

import '../../managers/get_products_cubit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w(context)),
      child: Column(
        children: [
          const HomeAppbar(),
          SizedBoxApp(
            h: 15.h(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const FreshVegetablesWidget(),
                  SizedBoxApp(
                    h: 15.h(context),
                  ),
                  const ViewAllWidget(
                    text: 'All Products',
                  ),
                  BlocConsumer<GetProductsCubit, GetProductsState>(
                    listener: (context, state) {
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      if (state is GetProductsFailure) {
                        return Center(
                          child: Text(state.message),
                        );
                      } else if (state is GetProductsSuccess) {
                        var products = state.productResponse.data;
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Number of items per row
                            crossAxisSpacing: 5, // Spacing between columns
                            mainAxisSpacing: 5, // Spacing between rows
                            mainAxisExtent: 250.h(context),
                          ),
                          itemCount: products.length,
                          // Total number of items
                          itemBuilder: (context, index) {
                            return CustomHomeItem(
                              index: index + 100,
                              product: products[index],
                            );
                          },
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
