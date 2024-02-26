import 'package:bookly/core/helper/url_launcher.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookPreviewUrl});
  final String bookPreviewUrl;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () async{
              await UrlLauncher.launchThisUrl(bookPreviewUrl,context);
            },
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Preview',
            backgroundColor: Colors.orange,
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            onPressed: () async{
              await UrlLauncher.launchThisUrl(bookPreviewUrl,context);
            },
          ),
        ),
      ],
    );
  }
}
