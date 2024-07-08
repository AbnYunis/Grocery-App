import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/select_location/presentations/manager/set_location_cubit.dart';

class SelectLocationBody extends StatelessWidget {
  const SelectLocationBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController country = TextEditingController();
    TextEditingController city = TextEditingController();
    TextEditingController location = TextEditingController();
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
                CountryState(
                  onChangedCity: (p0) {
                    city.text = p0!;
                  },
                  onChangedState: (p0) {
                    country.text = p0!;
                  },
                ),
                SizedBox(
                  height: 19.h(context),
                ),
                LocationDetails(onChanged: (p0) {
                  location.text = p0!;
                },),
                SizedBox(
                  height: 40.h(context),
                ),
                BlocConsumer<SetLocationCubit, SetLocationState>(
                  listener: (context, state) {
                    if(state is SetLocationSuccess){
                      context.go(Routers.authCustomer);

                    }
                  },
                  builder: (context, state) {
                    return CustomAppButton(
                      onPress: () {
                        context
                            .read<SetLocationCubit>()
                            .setLocation( city.text,country.text, location.text);
                      },
                      text: 'Done',
                      width: 266.w(context),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
