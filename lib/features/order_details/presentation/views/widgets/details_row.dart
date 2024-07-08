import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/home/data/models/products_model.dart';

class DetailsRow extends StatefulWidget {
  final Product product;
  final void Function(int?) getKgs;

  const DetailsRow({super.key, required this.product, required this.getKgs});

  @override
  State<DetailsRow> createState() => _DetailsRowState();
}

class _DetailsRowState extends State<DetailsRow> {
  int kgs = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '${widget.product.price} EGP',
              style: TextStyles.style20_300(context, CustomColor.black),
            ),
            SizedBoxApp(
              w: 10.w(context),
            ),
            Text(
              '${widget.product.comparePrice}',
              style: TextStyle(
                fontSize: 15.w(context),
                color: const Color(0xFFA5A5A5),
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
        Text(
          '',
          style: TextStyle(
              fontSize: 10.w(context),
              color: Colors.red,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red),
        ),
        Row(
          children: [
            SizedBox(
              width: 30.w(context),
              height: 30.w(context),
              child: FloatingActionButton(
                heroTag: "01",
                onPressed: () {
                  setState(() {
                    if (kgs > 1) {
                      kgs--;
                      widget.getKgs(kgs);
                    }
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.w(context)),
                ),
                mini: true,
                backgroundColor: kgs < 2 ? Colors.grey : Colors.green,
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w(context)),
              child: Text(
                '$kgs KG',
                style: TextStyles.style20_300(context, CustomColor.black),
              ),
            ),
            SizedBox(
              width: 30.w(context),
              height: 30.w(context),
              child: FloatingActionButton(
                heroTag: "0",
                onPressed: () {
                  setState(() {
                    kgs++;
                    widget.getKgs(kgs);
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.w(context)),
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
        )
      ],
    );
  }
}
