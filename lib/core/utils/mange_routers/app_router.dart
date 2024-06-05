import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/favourite/presentation/views/favourite_view.dart';
import 'package:grocery/features/home/presentation/views/home_view.dart';
import 'package:grocery/features/number/presentation/views/number_view.dart';
import 'package:grocery/features/sign_in/presentation/views/sign_in_view.dart';
import 'package:grocery/features/type_user/presentation/views/type_user_view.dart';
import 'package:grocery/features/verification/presentation/views/verification_view.dart';

import '../../../features/language/presentation/views/lang_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      Routers.goRouteFade(const FavouriteView(), '/'),
       Routers.goRouteFade(const LangView(), Routers.lang),
       Routers.goRouteFade(const TypeUserView(), Routers.typeUser),
       Routers.goRouteFade(const SignInView(), Routers.signIn),
       Routers.goRouteFade(const NumberView(), Routers.number),
       Routers.goRouteFade(const VerificationView(), Routers.verification),
       Routers.goRouteFade(const HomeView(), Routers.home),
      // Routers.goRouteFade(const AuctionView(), Routers.auction),
      // Routers.goRouteFade(const PaymentView(), Routers.payment),
      // GoRoute(
      //   path: Routers.addPost,
      //   builder: (context, state) => AddPostView(image: state.extra as File,),
      //   pageBuilder: (context, state) => buildPageWithFadeTransition<void>(
      //     context: context,
      //     state: state,
      //     child: AddPostView(image: state.extra as File,),
      //   ),
      // )
    ],
  );
}
