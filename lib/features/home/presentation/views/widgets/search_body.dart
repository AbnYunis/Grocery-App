import 'package:flutter/material.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w(context)),
          child: IconButton(onPressed: () {context.pop();}, icon: const Icon(Icons.arrow_back)),
        ),
        Transform.translate(
          offset: Offset(0, -30.h(context)),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 54.w(context)),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
