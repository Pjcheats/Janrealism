import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janrealism/constants/button.dart';
import 'package:janrealism/constants/const.dart';
import 'package:janrealism/constants/text.dart';
import 'package:janrealism/constants/textfiled.dart';
import 'package:janrealism/controller/auth_controller.dart';
import 'package:page_transition/page_transition.dart';

class Jourenal_login extends StatefulWidget {
  const Jourenal_login({super.key});

  @override
  State<Jourenal_login> createState() => _Jourenal_loginState();
}

class _Jourenal_loginState extends State<Jourenal_login> {
  TextEditingController _docid = TextEditingController();
  TextEditingController _userName = TextEditingController();

  GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

  AuthController _authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(height: 150, child: Image.asset("assets/logo.png")),
              const SizedBox(height: 20),
              text1("To Register give your Doc ID"),
              const SizedBox(height: 18),
              Obx((){ 
              
              if(AuthController.journalistUid == null || AuthController.journalistUid!.value.isEmpty){
                return Form(
                key: _formKey1,
                child: TextFormField(
                  controller: _docid,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black12)),
                    hintText: AuthController.journalistUid!.value,
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.black12, fontSize: 15),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value!.isEmpty || value.trim().length != 6) {
                      return "Please enter Valid Doc ID";
                    }
                    return null;
                  },
                ),
              );}
              return Form(
                key: _formKey2,
                child: TextFormField(
                  controller: _userName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black12)),
                    hintText: "Enter your desired Username",
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.black12, fontSize: 15),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Valid Username";
                    }
                    return null;
                  },
                ),
              );}),
              const Spacer(),
              InkWell(
                  onTap: () async {
                    if (_formKey1.currentState!.validate()) {
                      _authController.checkUid(_docid.text.trim(), context);
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
