import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/choose_game_screen/choose_game_button.dart';

class GameButton1 extends StatelessWidget {
  final ChooseGameButton chooseGameButton; // to create different buttons for
  // different games.
  const GameButton1({
    Key? key,
    required this.chooseGameButton,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Get.to(() => chooseGameButton.gameWidget,
            transition: Transition.zoom, duration: Duration(milliseconds: 230));
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            chooseGameButton.imagePath,
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            chooseGameButton.name,
            style: GoogleFonts.amiri(
                color: chooseGameButton.color,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ],
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Color.fromARGB(255, 91, 213, 95),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
