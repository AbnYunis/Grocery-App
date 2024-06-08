import '../../../../core/utils/mange_routers/imports.dart';

class SellerProfileView extends StatelessWidget {
  const SellerProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          title: Text(
            'Seller',
            style: TextStyles.style32_400(context, CustomColor.green),
          ),
          leading: Padding(
            padding: EdgeInsets.all(8.w(context)),
            child: CircleAvatar(
              radius: 24.w(context),
              backgroundImage: const NetworkImage(
                  "https://s3-alpha-sig.figma.com/img/d85e/e108/f14d6c2097b92fb16861710939fb5cf4?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=U7B9zz3I2w-l7eM6pIO9DdcnR~UnZq2d1g3guoikX~A~EuTZnJ58FpgS~Mcb-S3DqLwWP~1QBeXIoPhFdzMfO4oQ4CeblRi5uW8pPMO3clYI2xzX2JCof4In5ta~~sOni14nItShNOXUReqKXDHS6~8NwBF26V1RY6ConqPjxR8Hz2f33VBxlFq29A8Eh~l1VAa5iMEXP7mzXQwbn2ey-DUvXT1Yb-O5pYzXtNpa61q7j1mT~QecZjJEM--ubauiHJqP1paFGWfQJvxZM3cT4qQcBlnj~TQpIZMhxmjEJ6VxVlBXbjQ1CrODJV9npNkhmD1UQG5QgIFjmAnPAPnnZA__"),
            ),
          ),
          actions: [
            Card(
              color: const Color(0xFFD9D9D9),
              child: Padding(
                padding: EdgeInsets.all(8.w(context)),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 24.w(context),
                  color: const Color(0xFF216335),
                ),
              ),
            ),
            SizedBoxApp(
              w: 15.w(context),
            ),
            Card(
              color: const Color(0xFFD9D9D9),
              child: Padding(
                padding: EdgeInsets.all(8.w(context)),
                child: Icon(
                  Icons.favorite_border,
                  size: 24.w(context),
                  color: const Color(0xFF216335),
                ),
              ),
            ),
          ],
        ),
        body: const SellerProfileBody(),
      ),
    );
  }
}
