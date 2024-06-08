import '../../../../../core/utils/mange_routers/imports.dart';

class Step1 extends StatelessWidget {
  const Step1({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fill in the basic information about your item here",
              style: TextStyles.style12_700(context, CustomColor.black),
            ),
            SizedBoxApp(
              h: 20.h(context),
            ),
            const SellerTextField(
              labelText: "Title",
              maxLength: 60,
            ),
            SizedBoxApp(
              h: 20.h(context),
            ),
            const SellerTextField(
              labelText: "Description",
              maxLine: 5,
              maxLength: 1200,
            ),
            SizedBoxApp(
              h: 20.h(context),
            ),
            const SellerTextField(
              labelText: "Price",
              hintText: "Product price in PLN (gross)",
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
