import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class loginpg_mobile extends StatelessWidget {
  const loginpg_mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:
        Padding(
          padding: const EdgeInsets.all(50),
          child: Container(
            height: 600,
            width:380,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.transparent),
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.2)),
            child: VStack([
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset('assets/abhislogo.jpg'),
              ),
              Text('Login',style: GoogleFonts.poppins(fontSize: 23),).centered(),
              Container(
                width: 250,
                height: 45,
                child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Email address",
                      prefixIcon: Icon(Icons.mail_rounded),
                    )),
              ).centered().pOnly(top: 20),
              Container(
                width: 250,
                height: 45,

                child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: Icon(Iconsax.eye3),

                    )),
              ).centered().pOnly(top: 20),
              HStack([
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                ).pOnly(top: 30,left:25),
                Text('Remember me').pOnly(top: 30,left: 10),
                TextButton(onPressed: () {}, child: Text('Forgot Password')).pOnly(top: 30,left: 15),
              ]),
              SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(primary: Color(0xff15A49D)),child: Text('Sign in'))).centered().pOnly(top: 30),
              HStack([
                Text('Home',style: TextStyle(color: Colors.grey)),
                Text('Support',style: TextStyle(color: Colors.grey)).pOnly(left: 20,right: 20),
                Text('Privacy',style: TextStyle(color: Colors.grey)),
              ]).centered().pOnly(top: 30),
            ])
          ),
        ),
    );
  }
}
