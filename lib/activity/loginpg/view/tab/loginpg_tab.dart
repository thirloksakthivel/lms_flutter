import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class loginpg_tab extends StatelessWidget {
  const loginpg_tab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:
        Container(
          height: 900,
          width:600,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.2)),
          child: VStack([
            Padding(
              padding: const EdgeInsets.all(60),
              child: Image.asset('assets/abhislogo.jpg'),
            ),
            Text('Login',style: GoogleFonts.poppins(fontSize: 40),).centered(),
            Container(
              width: 500,
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
                  ),style: TextStyle(fontSize: 25),),
            ).centered().pOnly(top: 50),
            Container(
              width: 500,
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
                    suffixIcon: Icon(Iconsax.eye),

                  ),style: TextStyle(fontSize: 25),
              ),
            ).centered().pOnly(top: 20),
            HStack([
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              ).pOnly(top: 40,left:55),
              Text('Remember me',style: TextStyle(fontSize: 25),).pOnly(top: 40,left: 15),
              TextButton(onPressed: () {}, child: Text('Forgot Password',style: TextStyle(fontSize: 25),)).pOnly(top: 40,left: 100),
            ]),
            SizedBox(
                width: 500,
                height: 80,
                child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(primary: Color(0xff15A49D)),child: Text('Sign in',style: TextStyle(fontSize: 25),))).centered().pOnly(top: 50),
            HStack([
              Text('Home',style: TextStyle(color: Colors.grey,fontSize: 20)),
              Text('Support',style: TextStyle(color: Colors.grey,fontSize: 20)).pOnly(left: 20,right: 20),
              Text('Privacy',style: TextStyle(color: Colors.grey,fontSize: 20)),
            ]).centered().pOnly(top: 60),
          ])
        ).centered(),
    );
  }
}
