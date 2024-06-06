import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery/core/utils/mange_routers/imports.dart';

class ReviewRaw extends StatelessWidget {
  const ReviewRaw({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Review',
          style: TextStyles.style15_400(context, CustomColor.black),
        ),
        Row(
          children: [
            RatingBar.builder(
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20.w(context),
              itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
              itemBuilder: (context, _) => const Icon(
                size: 10,
                Icons.star,
                color: Colors.red,
              ),
              onRatingUpdate: (rating) {},
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 17.w(context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
