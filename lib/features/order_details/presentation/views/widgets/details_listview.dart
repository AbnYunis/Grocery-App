import 'package:grocery/core/utils/mange_routers/imports.dart';

class DetailsListview extends StatelessWidget {
  const DetailsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h(context),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 100.h(context),
              width: 80.w(context),
              margin:  EdgeInsets.all( 4.w(context)),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(.5), width: 1.0),
                borderRadius: BorderRadius.circular(15.w(context)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(AssetService.tomato),
              ),
            );
          }),
    );
  }
}
