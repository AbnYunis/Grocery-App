import 'package:grocery/core/utils/mange_routers/imports.dart';

class NumberView extends StatelessWidget {
  const NumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
        body: const NumberBody(),
      ),
    );
  }
}
