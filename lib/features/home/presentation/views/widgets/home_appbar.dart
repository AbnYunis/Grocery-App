import 'package:grocery/core/utils/mange_routers/imports.dart';
class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         //IconButton(onPressed: (){context.push(Routers.search);}, icon: const Icon(Icons.search),),
        const Text('Home'),
        IconButton(onPressed: (){}, icon: const Icon(Icons.menu_sharp))
      ],
    );
  }
}
