import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janrealism/constants/button.dart';
import 'package:janrealism/constants/const.dart';
import 'package:janrealism/constants/text.dart';
import 'package:janrealism/controller/auth_controller.dart';
import 'package:page_transition/page_transition.dart';
import 'package:uuid/uuid.dart';

class Jourenal_login extends StatefulWidget {
  const Jourenal_login({super.key});

  @override
  State<Jourenal_login> createState() => _Jourenal_loginState();
}

class _Jourenal_loginState extends State<Jourenal_login> {
  List<String> usernames = [];

  void generateUsernames() {
    List<String> adjectives = [
      "Happy",
      "Sad",
      "Brave",
      "Clever",
      "Funny",
      "Kind",
      "Lucky",
      "Smart",
      "Strong",
      "Wise",
      "Angry",
      "Calm",
      "Crazy",
      "Evil",
      "Fast",
      "Good",
      "Great",
      "Honest",
      "Nice",
      "Rich",
      "Shy",
    ];

    List<String> nouns = [
      "Cat",
      "Dog",
      "Bird",
      "Fish",
      "Lion",
      "Tiger",
      "Elephant",
      "Monkey",
      "Giraffe",
      "Zebra",
      "Bear",
      "Wolf",
      "Fox",
      "Rabbit",
      "Deer",
      "Horse",
      "Cow",
      "Pig",
      "Sheep",
      "Goat",
      "Chicken",
    ];
    for (int i = 0; i < 40; i++) {
     int randomIndex = Random().nextInt(20);

      String adjective = adjectives[randomIndex % adjectives.length];
      String noun = nouns[randomIndex % nouns.length];
      String username = adjective + noun;
      usernames.add(username);
    }
  }

  @override
  void initState() {
    generateUsernames();
    // TODO: implement initState
    super.initState();
  }

  TextEditingController _docid = TextEditingController();
  String _userName = "";
  bool _verified = false;

  GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _verified
              ? Column(
                  children: [
                    const SizedBox(height: 40),
                    SizedBox(
                        height: 150, child: Image.asset("assets/logo.png")),
                    const SizedBox(height: 20),
                    text1("Your username is:"),
                    text3(" $_userName"),
                    const SizedBox(height: 18),
                    text1("Passkey"),
                    const SizedBox(height: 10),
                    Container(
                      child: text1(Uuid().v4()),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10))
                    ),
                    text1("Securekey"),
                    const SizedBox(height: 10),
                    Container(
                      child: text1(Uuid().v4()),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10))
                    ),
                    
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          // make this screen last screen
                          Navigator.pushAndRemoveUntil(context, PageTransition(
                                  type: PageTransitionType.fade,
                                  child: const const_screen()), (route) => false);
                        },
                        child: button("Get Started")),
                  ],
                )
              : Column(
                  children: [
                    const SizedBox(height: 40),
                    SizedBox(
                        height: 150, child: Image.asset("assets/logo.png")),
                    const SizedBox(height: 20),
                    text1("To Register give your Doc ID"),
                    const SizedBox(height: 18),
                    Form(
                      key: _formKey1,
                      child: TextFormField(
                        controller: _docid,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.black12)),
                          hintText: "Enter Doc ID",
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black12, fontSize: 15),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        validator: (value) {
                          if (value!.isEmpty || value.trim() != "136548") {
                            return "Please enter Valid Doc ID";
                          }
                          return null;
                        },
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () async {
                          if (_formKey1.currentState!.validate()) {
                            //get random username from list
                            int randomIndex = Random().nextInt(usernames.length);
                            _userName = usernames[randomIndex];
                            AuthController.userName = _userName;
                            setState(() {
                              _verified = true;
                            });
                          }
                        },
                        child: button("Generate keys")),
                  ],
                ),
        ),
      ),
    );
  }
}
