import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/home/data/repos/home_repo_implement.dart';
import 'package:grocery/features/home/presentation/managers/get_products_cubit.dart';
import 'package:grocery/features/home/presentation/views/widgets/home_body.dart';

import '../../../../core/utils/function/service_locator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) =>
            GetProductsCubit(sl<HomeRepoImplement>())..getAllProducts(),
        child: const Scaffold(
          body: HomeBody(),
        ),
      ),
    );
  }
}
