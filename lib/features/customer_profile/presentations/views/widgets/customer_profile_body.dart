import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/function/api_service.dart';
import 'package:grocery/core/utils/function/shared_data.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/customer_profile/presentations/manager/log_out_cubit/logout_cubit.dart';

import '../../../../../core/utils/function/service_locator.dart';

class CustomerProfileBody extends StatelessWidget {
  const CustomerProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'About',
      'My Details',
      'Delivery Address',
      'Payment Methods',
      "Promo Cord"
    ];
    List<IconData> widgets = [
      Icons.shopping_bag_outlined,
      Icons.account_box_outlined,
      Icons.location_on_outlined,
      Icons.payment_outlined,
      Icons.local_offer_outlined
    ];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h(context)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w(context)),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 32.w(context),
                  backgroundImage: const NetworkImage(
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                ),
                SizedBoxApp(
                  w: 15.w(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          SharedData.getUserName()!,
                          style: TextStyles.style20_700(
                              context, CustomColor.black),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.edit_outlined,
                            size: 20.w(context),
                            color: const Color(0xFF216335),
                          ),
                        ),
                      ],
                    ),
                    SizedBoxApp(
                      h: 5.h(context),
                    ),
                    Text(
                      SharedData.getUserEmail()!,
                      style: TextStyles.style16_700(
                          context, CustomColor.lightGrey),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBoxApp(
            h: 20.h(context),
          ),
          const Divider(),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    index == 0 ? GoRouter.of(context).push(Routers.about) : '';
                  },
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 30.w(context), vertical: 0),
                  title: Text(
                    titles[index],
                    style: TextStyles.style18_700(context, CustomColor.black),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  leading: Icon(widgets[index]),
                );
              },
              separatorBuilder: (context, index) => Divider(
                    height: 2.h(context),
                  ),
              itemCount: 5),
          const Divider(),
          const Spacer(),
          BlocProvider(
            create: (context) => LogoutCubit(sl<ApiService>()),
            child: BlocConsumer<LogoutCubit, LogoutState>(
              listener: (context, state) {
                print(state);
                // TODO: implement listener
              },
              builder: (context, state) {


                if(state is LogoutLoading){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }else{
                  return CustomAppButton(
                    text: 'Logout',
                    onPress: () {
                      context.go(Routers.authCustomer);
                     // BlocProvider.of<LogoutCubit>(context).logOut();
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
