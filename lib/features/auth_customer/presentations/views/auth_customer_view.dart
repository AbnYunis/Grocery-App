import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/auth_customer/presentations/manager/auth_customer_cubit.dart';
import 'package:grocery/features/auth_customer/presentations/views/widgets/auth_customer_body.dart';

import '../../../../core/utils/function/service_locator.dart';
import '../../data/repos/auth_customer_repo_implement.dart';

class AuthCustomerView extends StatelessWidget {
  const AuthCustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCustomerCubit(sl<AuthCustomerRepoImplement>()),
      child: SafeArea(
        child: Scaffold(
          body: AuthCustomerBody(),
        ),
      ),
    );
  }
}
