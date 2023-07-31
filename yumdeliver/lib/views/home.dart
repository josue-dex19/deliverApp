import 'package:flutter/material.dart';
import 'package:yumdeliver/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/all_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: RichText(
          text: TextSpan(
              text: "YumDeliver",
              style: GoogleFonts.nothingYouCouldDo(
                textStyle: const TextStyle(
                    color: thirdColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              children: const <TextSpan>[
                TextSpan(
                    text: '.',
                    style: TextStyle(color: primaryColor, fontSize: 100.0))
              ]),
        ),
      ),
      body: SizedBox(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Savor the \nFlavors With",
                  style: TextStyle(
                    color: thirdColor,
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  "YumDeliver",
                  style: GoogleFonts.kaushanScript(
                      textStyle: const TextStyle(
                    color: thirdColor,
                    fontSize: 40.0,
                  )),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/donate 2.png',
                    height: 300.0,
                    width: double.infinity,
                  ),
                ),
                withButton(
                  context,
                  'Get Start',
                  secondaryColor,
                  thirdColor,
                  () {
                    Navigator.pushNamed(context, '/welcome');
                  },
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
