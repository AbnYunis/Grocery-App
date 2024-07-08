import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/features/customer_profile/presentations/manager/about_cubit/about_cubit.dart';

import '../../../../../core/utils/mange_routers/imports.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: BlocConsumer<AboutCubit, AboutState>(
        listener: (context, state) {
          if (state is AboutSuccess) {}
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is AboutFailure) {
            return Center(
              child: Text(state.message),
            );
          } else if (state is AboutSuccess) {
            String formattedText = state.data['data']['text']
                .replaceAllMapped(RegExp(r'[^\S\n]+'), (match) {
              return match.group(0)!.contains('\n') ? '\n' : ' ';
            }).trim();
            return Padding(
              padding: EdgeInsets.all(size.width * .05),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: size.height / size.width,
                    child: CachedNetworkImage(
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.white,
                        highlightColor: Colors.black54,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      fit: BoxFit.fill,
                      imageUrl: state.data['data']['image_url'],
                      errorWidget: (context, url, error) =>
                          const Center(child: Icon(Icons.error)),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  Text(
                    formattedText,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
