import 'package:grocery/core/utils/function/shared_data.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/favourite/presentation/views/widgets/favourite_item.dart';

import '../../../../home/data/models/products_model.dart';


class FavouriteBody extends StatefulWidget {
  const FavouriteBody({super.key});

  @override
  _FavouriteBodyState createState() => _FavouriteBodyState();
}

class _FavouriteBodyState extends State<FavouriteBody> {
  List<Product> _favouriteProducts = [];

  @override
  void initState() {
    super.initState();
    _loadFavourites();
  }

  Future<void> _loadFavourites() async {
    List<Product>? products = await SharedData.getFaveData();
    if (products != null) {
      setState(() {
        _favouriteProducts = products;
      });
    }
  }

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
          _favouriteProducts.isNotEmpty
              ? Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return FavouriteItem(product: _favouriteProducts[index]);
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: _favouriteProducts.length,
            ),
          )
              : Center(
            child: Text(
              'No favourite items',
              style: TextStyles.style16_700(context, CustomColor.black),
            ),
          ),
          const Spacer(),
          CustomAppButton(
            text: 'Add All To Cart',
            onPress: () {
              // Add all to cart logic
            },
          ),
          SizedBoxApp(
            h: 100.h(context),
          )
        ],
      ),
    );
  }
}
