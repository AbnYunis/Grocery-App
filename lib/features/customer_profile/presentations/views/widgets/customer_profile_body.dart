import 'package:grocery/core/utils/mange_routers/imports.dart';

class CustomerProfileBody extends StatelessWidget {
  const CustomerProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'Orders',
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
                      "https://s3-alpha-sig.figma.com/img/c7e7/1dd7/c0c82e0b452a92db78557eff4d951d59?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PjeZna9nV-EB4DNUSqv3QL4F~6BZEAEvF6gJ4PyZkbTTdARE8NgMvghfr46olRcVYw-0BUt6AvzFcnDuKeLPQg5t55tikiWzoP~HkizvPD9iVjHZYfR3pWmP7QPyPz3Oa4BUy5zgXGceq6bryMhdi8hGXTbMj0NcFI3gWtD7GfW2ta2mqtBtzUJ~lyB6Uz8fGwBimqT7dxYdHQYyuSQ-7whRWXP9kWuO5NPDRWiEQ3QTnxUngKc6z~FhmPS1vGkdvU2uU2h7pjGVPqZ-4OE~M0I5BsEmFfDA1D8UVTcuAhNTXefmOQmM1tKB9th4jtFY4zpP~tr0TVdTMNr3GcTfWA__"),
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
                          'Ahmed mohamed',
                          style: TextStyles.style20_700(
                              context, CustomColor.black),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.edit_outlined,
                            size: 20.w(context),
                            color: Color(0xFF216335),
                          ),
                        ),
                      ],
                    ),
                    SizedBoxApp(
                      h: 5.h(context),
                    ),
                    Text(
                      'Ahmed97@gmail.com',
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
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 30.w(context), vertical: 0),
                  title: Text(
                    titles[index],
                    style: TextStyles.style18_700(context, CustomColor.black),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(widgets[index]),
                );
              },
              separatorBuilder: (context, index) => Divider(
                    height: 2.h(context),
                  ),
              itemCount: 5),
          Divider(),
          Spacer(),
          CustomAppButton(
            text: 'Logout',
            onPress: () {},

          ),

        ],
      ),
    );
  }
}
