import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/function/api_service.dart';
import 'package:grocery/features/customer_profile/presentations/manager/about_cubit/about_cubit.dart';

import '../../../../core/utils/function/service_locator.dart';
import '../../../../core/utils/mange_routers/imports.dart';
import 'widgets/about_body.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutCubit(sl<ApiService>())..getAbout(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('About'),
            centerTitle: true,
          ),
          body: const AboutBody(),
        ),
      ),
    );
  }
}
