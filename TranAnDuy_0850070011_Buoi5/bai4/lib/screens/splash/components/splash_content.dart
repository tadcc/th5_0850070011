import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 55),
      child: Column(
        children: <Widget>[
          const Spacer(),
          Text(
            "TOKOTO",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text!,
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 2),
          Image.asset(
            image!,
            height: getProportionateScreenHeight(265),
            width: getProportionateScreenWidth(235),
          ),
        ],
      ),
    );
  }
}