import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError(this.errMessage, {super.key});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage,style: Styles.textStyle20,));
  }
}
