
import 'package:grocery/core/constant.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/customer_profile/presentations/views/customer_profile_view.dart';
import 'package:grocery/features/favourite/presentation/views/favourite_view.dart';
import 'package:grocery/features/home/presentation/views/home_view.dart';
import 'package:grocery/features/seller_profile/presentations/views/seller_profile_view.dart';
import 'package:grocery/features/setting/presentations/views/setting_view.dart';

class CustomBNB extends StatefulWidget {
  const CustomBNB({super.key});

  @override
  State<CustomBNB> createState() => _CustomBNBState();
}

class _CustomBNBState extends State<CustomBNB> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeView(),
      const SettingView(),
      const FavouriteView(),
      isSeller?const SellerProfileView():const CustomerProfileView(),

    ];
    List icons = [
      Icons.home_outlined,
      Icons.settings_outlined,
      Icons.favorite_outline,
      Icons.perm_identity_rounded,
    ];
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBody: true,
        body: screens[currentIndex],
        bottomNavigationBar: Container(
          color: const Color(0xFFF1F1F1),
          width: double.infinity,
          height: 64.h(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icons[index],
                        size: 24.w(context),
                        color: (currentIndex == index)
                            ? const Color(0xFF2B894E)
                            : Colors.grey,
                      ),
                      (currentIndex == index)?Container(
                        width: 21.w(context),
                        height: 10.h(context),
                        decoration: BoxDecoration(
                          color: const Color(0xFF2B894E),
                          borderRadius: BorderRadius.circular(20.w(context)),
                        ),
                      ):const SizedBox.shrink()
                    ],
                  ),
                ),
              ),
            )..insert(2, SizedBoxApp(w: 48.w(context))),
          ),
        ),
        floatingActionButton: isSeller?const SizedBox.shrink():GestureDetector(
          onTap: () {
            context.push(Routers.cart);
          },
          child: CircleAvatar(
            radius: 29.w(context),
            backgroundColor:const Color(0xFF2B894E),
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 24.w(context),
              color:Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
