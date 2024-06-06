import 'package:grocery/core/utils/mange_routers/imports.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '10,00 EGP',
              style: TextStyles.style20_300(context, CustomColor.black),
            ),
            SizedBoxApp(
              w: 10.w(context),
            ),
            Text(
              '15,00',
              style: TextStyle(
                fontSize: 15.w(context),
                color: const Color(0xFFA5A5A5),
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
        Text(
          '3days',
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
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.w(context)),
                ),
                mini: true,
                backgroundColor: Colors.grey,
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w(context)),
              child: Text(
                '1 KG',
                style: TextStyles.style20_300(context, CustomColor.black),
              ),
            ),
            SizedBox(
              width: 30.w(context),
              height: 30.w(context),
              child: FloatingActionButton(
                onPressed: () {},
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
