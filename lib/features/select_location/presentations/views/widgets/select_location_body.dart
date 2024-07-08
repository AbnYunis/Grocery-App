import 'package:grocery/core/constant.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';

class SelectLocationBody extends StatelessWidget {
  const SelectLocationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w(context)),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetService.map,
                    width: 224.69.w(context),
                    height: 170.69.h(context),
                  ),
                  SizedBox(
                    height: 40.h(context),
                  ),
                  Text(
                    'Select Your Location',
                    style: TextStyles.style26_700(context, CustomColor.black),
                  ),
                  SizedBox(
                    height: 15.h(context),
                  ),
                  Text(
                    'Switch on your location to stay in tune with what’s happening in your area',
                    style: TextStyles.style16_700(context, CustomColor.lightGrey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.h(context),
                  ),
                  const CountryState(),
                  SizedBox(
                    height: 19.h(context),
                  ),
                  const LocationDetails(),
                  SizedBox(
                    height: 40.h(context),
                  ),
                  CustomAppButton(
                    onPress: () {
                      context.push(Routers.authCustomer);
                    },
                    text: 'Done',
                    width: 266.w(context),
                  ),
                ],
              ),

          ),

        ],
      ),
    );
  }
}
