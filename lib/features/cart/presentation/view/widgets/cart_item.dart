import 'package:flutter/material.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/home/data/models/products_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key, required this.product, required this.onDelete}) : super(key: key);
  final Product product;
  final VoidCallback onDelete;

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  Future<void> _incrementQuantity() async {
    setState(() {
      widget.product.quantity++;
    });
    await _updateCart();
  }

  Future<void> _decrementQuantity() async {
    if (widget.product.quantity > 1) {
      setState(() {
        widget.product.quantity--;
      });
      await _updateCart();
    }
  }

  Future<void> _deleteProduct() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> productListJson = prefs.getStringList('productList') ?? [];
    List<Product> productList = productListJson.map((item) => Product.fromJson(jsonDecode(item))).toList();
    productList.removeWhere((p) => p.id == widget.product.id);
    productListJson = productList.map((product) => jsonEncode(product.toJson())).toList();
    await prefs.setStringList('productList', productListJson);
    widget.onDelete();
  }

  Future<void> _updateCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> productListJson = prefs.getStringList('productList') ?? [];
    List<Product> productList = productListJson.map((item) => Product.fromJson(jsonDecode(item))).toList();
    int index = productList.indexWhere((p) => p.id == widget.product.id);
    if (index != -1) {
      productList[index] = widget.product;
    }
    productListJson = productList.map((product) => jsonEncode(product.toJson())).toList();
    await prefs.setStringList('productList', productListJson);
    setState(() {
      // Update the UI to reflect the quantity change
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
              imageUrl: widget.product.productImage,
              errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
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
                    widget.product.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.style16_700(context, CustomColor.black),
                  ),
                ),
                Text(
                  widget.product.price.toString(),
                  style: TextStyles.style16_700(context, CustomColor.lightGrey),
                ),
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
                  onPressed: _decrementQuantity,
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
                  widget.product.quantity.toString(),
                  style: TextStyles.style20_700(context, CustomColor.black),
                ),
              ),
              SizedBox(
                width: 25.w(context),
                height: 25.w(context),
                child: FloatingActionButton(
                  onPressed: _incrementQuantity,
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
                onTap: _deleteProduct,
                child: const Icon(
                  Icons.delete_outline_sharp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
