import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';


class dashboard_pc extends StatelessWidget {
  const dashboard_pc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HStack([
        Container(
          height: 1000,
          width: 320,
          decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.transparent)
        ,color: Color(0xff32A399),
          ),
          child: VStack([
            Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/abhislogo.jpg')
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white,
            ),
            Container(
                child:HStack([
                  Icon(Icons.home,color: Color(0XffFF9800),size: 35).pOnly(left: 10),
                  Text('Home',style: TextStyle(color: Colors.white),).pOnly(left: 15)
                ]).pOnly(top: 12,left: 10),
            ),
            Container(
              child:HStack([
                Icon(Icons.apartment,color: Color(0XffFF9800),size: 35).pOnly(left: 10),
                Text('Institutes',style: TextStyle(color: Colors.white),).pOnly(left: 15)
              ]).pOnly(top: 12,left: 10),
            ),
            Container(
              child:HStack([
                Icon(Icons.account_circle,color: Color(0XffFF9800),size: 35).pOnly(left: 10),
                Text('Admins',style: TextStyle(color: Colors.white),).pOnly(left: 15)
              ]).pOnly(top: 12,left: 10),
            ),
            Container(
              child:HStack([
                Icon(Icons.amp_stories,color: Color(0XffFF9800),size: 35).pOnly(left: 10),
                Text('Reports',style: TextStyle(color: Colors.white),).pOnly(left: 15)
              ]).pOnly(top: 12,left: 10),
            ),
            Container(
              child:HStack([
                Icon(Icons.call,color: Color(0XffFF9800),size: 35).pOnly(left: 10),
                Text('Support',style: TextStyle(color: Colors.white),).pOnly(left: 15)
              ]).pOnly(top: 12,left: 10),
            ),
            Container(
              child:HStack([
                Icon(Icons.logout,color: Color(0XffFF9800),size: 35).pOnly(left: 10),
                Text('Logout',style: TextStyle(color: Colors.white),).pOnly(left: 15)
              ]).pOnly(top: 12,left: 10),
            ),
            Container(
              child:VStack([
                Text('Go to institute admin',style: TextStyle(color: Colors.white)).pOnly(top: 40),
                Text('Go to Branch Admin',style: TextStyle(color: Colors.white)).pOnly(top: 20),
                Text('Go to Faculty',style: TextStyle(color: Colors.white)).pOnly(top: 20),
              ])
            )
          ]),
        )
      ]),
    );
  }
}
