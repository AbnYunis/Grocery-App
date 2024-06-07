import 'package:grocery/core/utils/mange_routers/imports.dart';

class DoneBody extends StatelessWidget {
  const DoneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(15.w(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(AssetService.done),
          TextButton(
            onPressed: () {
              context.go(Routers.home);
            },
            child: Text(
              'Back to home',
              style: TextStyles.style18_700(context, CustomColor.black),
            ),
          ),
        ],
      ),
    );
  }
}
