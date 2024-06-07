import 'package:grocery/core/utils/mange_routers/imports.dart';

class CustomHomeItem extends StatelessWidget {
  const CustomHomeItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routers.order);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2.2,
        child: Card(
          child: Column(
            children: [
              Image.asset(
                AssetService.tomato,
                scale: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w(context), right: 8.w(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tomato',
                      style: TextStyles.style20_300(context, CustomColor.black),
                    ),
                    Text(
                      '1KG',
                      style:
                          TextStyles.style20_700(context, CustomColor.lightGrey),
                    ),
                    Row(
                      children: [
                        Text(
                          '10,00 EGP',
                          style:
                              TextStyles.style20_300(context, CustomColor.black),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '3days',
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
