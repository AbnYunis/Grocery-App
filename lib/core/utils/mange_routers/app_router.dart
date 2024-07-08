import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/core/utils/widgets/custom_bnb.dart';
import 'package:grocery/features/auth_customer/presentations/views/auth_customer_view.dart';
import 'package:grocery/features/auth_seller/presentations/views/auth_seller_view.dart';
import 'package:grocery/features/cart/presentation/view/cart_view.dart';
import 'package:grocery/features/cart/presentation/view/done_view.dart';
import 'package:grocery/features/customer_profile/presentations/views/about_view.dart';
import 'package:grocery/features/favourite/presentation/views/favourite_view.dart';
import 'package:grocery/features/home/presentation/views/search_view.dart';
import 'package:grocery/features/number/presentation/views/number_view.dart';
import 'package:grocery/features/order_details/presentation/views/order_details_view.dart';
import 'package:grocery/features/seller_profile/presentations/views/finish_add_ads_view.dart';
import 'package:grocery/features/sign_in/presentation/views/sign_in_view.dart';
import 'package:grocery/features/type_user/presentation/views/type_user_view.dart';
import 'package:grocery/features/verification/presentation/views/verification_view.dart';

import '../../../features/language/presentation/views/lang_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      Routers.goRouteFade(const SplashView(), '/'),
      Routers.goRouteFade(const LangView(), Routers.lang),
      Routers.goRouteFade(const TypeUserView(), Routers.typeUser),
      Routers.goRouteFade(const SignInView(), Routers.signIn),
      Routers.goRouteFade(const NumberView(), Routers.number),
      Routers.goRouteFade(const VerificationView(), Routers.verification),
      Routers.goRouteFade(const SelectLocationView(), Routers.selectLocation),
      Routers.goRouteFade(const AuthCustomerView(), Routers.authCustomer),
      Routers.goRouteFade(const AuthSellerView(), Routers.authSeller),
      Routers.goRouteFade(const CustomBNB(), Routers.home),
      Routers.goRouteFade(const SearchView(), Routers.search),
      Routers.goRouteFade(const CartView(), Routers.cart),
      Routers.goRouteFade(const OrderDetailsView(), Routers.order),
      Routers.goRouteFade(const DoneView(), Routers.done),
      Routers.goRouteFade(const FavouriteView(), Routers.favourite),
      Routers.goRouteFade(const FinishAddAdsView(), Routers.finishAds),
      Routers.goRouteFade(const AboutView(), Routers.about),
    ],
  );
}
