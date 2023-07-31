import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yumdeliver/constants/colors.dart';
import '../widgets/all_widget.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              "YumDeliver",
              style: GoogleFonts.kaushanScript(
                  textStyle: const TextStyle(
                color: secondaryColor,
                fontSize: 30.0,
              )),
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/welcomeimg.png",
              height: 300.0,
              width: double.infinity,
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              )),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              textAlign: TextAlign.center,
              "Occaecat dolore esse voluptate fugiat officia duis anim et proident.",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                withButton(
                    context, 'Create an account', thirdColor, secondaryColor,
                    () {
                  Navigator.pushNamed(context, '/inscription');
                }),
                const SizedBox(
                  height: 10,
                ),
                withButton(context, 'Login', secondaryColor,
                    const Color.fromARGB(255, 165, 214, 167), () {
                  Navigator.pushNamed(context, '/accueil');
                }),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Occaecat dolore esse voluptate fugiat officia duis anim et proident fugiat.",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
