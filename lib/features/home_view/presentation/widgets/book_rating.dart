import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utlis/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,this.mainAxisAlignment=MainAxisAlignment.start, required this.rating, required this.ratingCount});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment:mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.faceGrinStars,color: Colors.amber,size: 20),
        const SizedBox(width: 8,),
         Text(rating.toString(),style: Styles.textStyle16,),
        const SizedBox(width: 8,),
        Text('($ratingCount)',style: Styles.textStyle16.copyWith(color: Colors.blueGrey),),
      ],
    );
  }
}
