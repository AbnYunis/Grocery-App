import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/select_location/presentations/manager/set_location_cubit.dart';

import '../../../../core/utils/function/service_locator.dart';
import '../../data/repos/set_location_repo_implement.dart';

class SelectLocationView extends StatelessWidget {
  const SelectLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => SetLocationCubit(sl<SelectLocationRepoImplement>()),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.w(context),
              ),
            ),
          ),
          body: const SelectLocationBody(),
        ),
      ),
    );
  }
}
