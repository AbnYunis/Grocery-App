import 'package:grocery/core/utils/function/shared_data.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/cart/presentation/view/widgets/cart_item.dart';
import 'package:grocery/features/cart/presentation/view/widgets/order_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../home/data/models/products_model.dart';


class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  List<Product>? products;

  @override
  void initState() {
    super.initState();
    loadCartData();
  }

  Future<void> loadCartData() async {
    products = await SharedData.getAddToCartData();
    setState(() {});
  }

  void _handleDeleteProduct(Product product) {
    setState(() {
      products!.removeWhere((p) => p.id == product.id);
    });
  }

  Future<void> _handleDeleteAllProducts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('productList');
    setState(() {
      products = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w(context)),
      child: Column(
        children: [
          Center(
            child: Text(
              'My Cart',
              style: TextStyles.style20_700(context, CustomColor.black),
            ),
          ),
          SizedBoxApp(
            h: 25.h(context),
          ),
          products == null
              ? CircularProgressIndicator() // Show a loading indicator while data is loading
              : products!.isEmpty
              ? Text(
            'No products in the cart',
            style: TextStyles.style16_700(context, CustomColor.lightGrey),
          )
              : ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CartItem(
                  product: products![index],
                  onDelete: () => _handleDeleteProduct(products![index]),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: products!.length),
          const Spacer(),
          CustomAppButton(
            text: 'Order',
            onPress: () {
              _handleDeleteAllProducts;
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return  Wrap(children: [OrderBottomSheet(function: _handleDeleteAllProducts,)]);
                  });
            },
            width: 250.w(context),
          ),
          SizedBoxApp(
            h: 20.h(context),
          ),

        ],
      ),
    );
  }
}



