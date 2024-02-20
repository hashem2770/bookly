import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utlis/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Colors.amber,),
        const SizedBox(width: 8,),
        const Text('4.8',style: Styles.textStyle16,),
        const SizedBox(width: 8,),
        Text('(826)',style: Styles.textStyle16.copyWith(color: Colors.blueGrey),),
      ],
    );
  }
}
