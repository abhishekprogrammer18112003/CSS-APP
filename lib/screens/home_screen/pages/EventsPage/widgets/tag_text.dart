import 'package:flutter/material.dart';
import 'package:cssapp/configs/configs.dart';

class TagText extends StatelessWidget {
  const TagText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      child: Wrap(
        spacing: 10,
        children: [
          Text("Participate",
              style: textStylisedItaliannoSmall.copyWith(
                  color: Theme.of(context).backgroundColor)),
          Text("Enjoy",
              style: textStylisedItaliannoSmall.copyWith(
                  color: Pallet.accentColor)),
          Text("Learn",
              style: textStylisedItaliannoSmall.copyWith(
                  color: Theme.of(context).backgroundColor)),
        ],
      ),
    );
  }
}
