import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/choose_game_screen/game_catalog_screen.dart';
import 'package:test_1/main_screen/custom_backButton.dart';
import 'package:test_1/main_screen/main_menu.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginPage(),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // TODO: Add authentication logic here (e.g., check against a database)
    print('Username: $username, Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/assets/image/images/Login_Page_Background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 65.0,
            left: 16.0,
            child: CustomBackButton(
              onPressed: () {
                Get.offAll(() => MainMenu(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 400));
              },
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const Image(
                      image: AssetImage(
                          'lib/assets/image/images/main_CharacterTheme.png'),
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 130, left: 30),
                      child: Text(
                        'إدراك',
                        style: GoogleFonts.tajawal(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextField(
                    controller: _usernameController,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.brown[400],
                    decoration: InputDecoration(
                      labelText: 'اسم المستخدم',
                      labelStyle:
                          GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    cursorColor: Colors.brown[400],
                    decoration: InputDecoration(
                      labelText: 'كلمة السر',
                      labelStyle:
                          GoogleFonts.tajawal(fontWeight: FontWeight.bold),
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  child: Text(
                    'تسجيل دخول',
                    style: GoogleFonts.tajawal(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Get.offAll(() => MainMenu(),
                        transition: Transition.fade,
                        duration: Duration(milliseconds: 250));
                  },
                ),
                const SizedBox(height: 5.0),
                ElevatedButton(
                  onPressed: () {
                    Get.off(() => GameCatalog(),
                        transition: Transition.zoom,
                        duration: Duration(milliseconds: 300));
                  },
                  child: Text(
                    'إلعب كـضيف',
                    style: GoogleFonts.tajawal(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
