import 'package:bai4/components/default_button.dart';
import 'package:bai4/screens/home/home_screen.dart';
import 'package:bai4/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.02,
          width: SizeConfig.defaultSize,),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.1, //40%
          ),
          // SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          // const Spacer(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            height: SizeConfig.screenWidth * 0.16,
            child: DefaultButton(
              text: "Back to home",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}