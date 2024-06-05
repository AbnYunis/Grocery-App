import 'package:grocery/core/utils/mange_routers/imports.dart';
import 'package:grocery/features/home/presentation/views/widgets/custom_home_item.dart';
import 'package:grocery/features/home/presentation/views/widgets/fresh_vegetables_widget.dart';
import 'package:grocery/features/home/presentation/views/widgets/home_appbar.dart';
import 'package:grocery/features/home/presentation/views/widgets/view_all_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w(context)),
        child: Column(
          children: [
            const HomeAppbar(),
            const FreshVegetablesWidget(),
            SizedBoxApp(
              h: 15.h(context),
            ),
            const ViewAllWidget(
              text: 'The most request',
            ),

            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items per row
                crossAxisSpacing: 5, // Spacing between columns
                mainAxisSpacing: 0, // Spacing between rows
                mainAxisExtent: 250.h(context)
              ),
              itemCount: 2,
              // Total number of items
              itemBuilder: (context, index) {
                return const CustomHomeItem();
              },
            ),
            const ViewAllWidget(
              text: 'Recently arrived',
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of items per row
                  crossAxisSpacing: 5, // Spacing between columns
                  mainAxisSpacing: 5, // Spacing between rows
                  mainAxisExtent: 250.h(context)
              ),
              itemCount: 4,
              // Total number of items
              itemBuilder: (context, index) {
                return const CustomHomeItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
