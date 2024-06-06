import 'package:grocery/core/utils/mange_routers/imports.dart';

class OrderDetailsAppbar extends StatelessWidget {
  const OrderDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20.w(context),
          ),
        ),
        const Text('Details'),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
