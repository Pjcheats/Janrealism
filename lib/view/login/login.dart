import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janrealism/constants/button.dart';
import 'package:janrealism/controller/auth_controller.dart';
import 'package:janrealism/service/firestore_service.dart';
import 'package:janrealism/view/login/journalist_login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:uuid/uuid.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 400, child: Image.asset("assets/full-logo.png")),
            const Spacer(),
            InkWell(
                onTap: ()async {
                
                   Navigator.push(
                     context,
                      PageTransition(
                           type: PageTransitionType.fade,
                           child: const Jourenal_login()));
                },
                child: button("Journalist Login")),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 80,
                  child: Divider(
                    color: Colors.black12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "or",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 80,
                  child: Divider(
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            button("User Login")
          ],
        ),
      ),
    );
  }
}
