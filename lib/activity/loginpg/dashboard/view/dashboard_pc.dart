import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class dashboard_pc extends StatelessWidget {
  dashboard_pc({Key? key}) : super(key: key);

  final List<String> items = [
    'My profile',
    'Contact us',
    'Log out',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HStack([
        Container(
          height: 1000,
          width: 290,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.transparent),
            color: Color(0xff32A399),
          ),
          child: VStack([
            Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/abhislogo.jpg', height: 75)),
            ).centered(),
            Divider(
              thickness: 1,
              color: Colors.white,
            ),
            Container(
              child: HStack([
                Icon(Icons.home, color: Color(0Xff33691E), size: 35)
                    .pOnly(left: 10),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ).pOnly(left: 15)
              ]).pOnly(top: 12, left: 10),
            ),
            Container(
              child: HStack([
                Icon(Icons.apartment, color: Color(0Xff33691E), size: 35)
                    .pOnly(left: 10),
                Text(
                  'Institutes',
                  style: TextStyle(color: Colors.white),
                ).pOnly(left: 15)
              ]).pOnly(top: 12, left: 10),
            ),
            Container(
              child: HStack([
                Icon(Icons.account_circle, color: Color(0Xff33691E), size: 35)
                    .pOnly(left: 10),
                Text(
                  'Admins',
                  style: TextStyle(color: Colors.white),
                ).pOnly(left: 15)
              ]).pOnly(top: 12, left: 10),
            ),
            Container(
              child: HStack([
                Icon(Icons.amp_stories, color: Color(0Xff33691E), size: 35)
                    .pOnly(left: 10),
                Text(
                  'Reports',
                  style: TextStyle(color: Colors.white),
                ).pOnly(left: 15)
              ]).pOnly(top: 12, left: 10),
            ),
            Container(
              child: HStack([
                Icon(Icons.call, color: Color(0Xff33691E), size: 35)
                    .pOnly(left: 10),
                Text(
                  'Support',
                  style: TextStyle(color: Colors.white),
                ).pOnly(left: 15)
              ]).pOnly(top: 12, left: 10),
            ),
            Container(
              child: HStack([
                Icon(Icons.logout, color: Color(0Xff33691E), size: 35)
                    .pOnly(left: 10),
                Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ).pOnly(left: 15)
              ]).pOnly(top: 12, left: 10),
            ),
            Container(
              child: HStack([
                Icon(Icons.report, color: Color(0Xff33691E), size: 35)
                    .pOnly(left: 10),
                Text(
                  'Terms & Conditions',
                  style: TextStyle(color: Colors.white),
                ).pOnly(left: 15)
              ]).pOnly(top: 12, left: 10),
            ),
            Container(
              child: HStack([
                Icon(Icons.panorama_fish_eye_outlined, color: Color(0Xff33691E), size: 35)
                    .pOnly(left: 10),
                Text(
                  'Privacy Policy',
                  style: TextStyle(color: Colors.white),
                ).pOnly(left: 15)
              ]).pOnly(top: 12, left: 10),
            ),

          ]),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 85,
              width: 1240,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(8)),
              child: HStack([
                Container(
                  width: 320,
                  height: 120,
                  child: TextField(
                      decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search),
                  )),
                ).pOnly(top: 15),
                Icon(Icons.video_camera_back_rounded, size: 30).pOnly(left: 20),
                Icon(Icons.notifications, size: 30).pOnly(left: 20),
                Icon(Icons.message_outlined, size: 30).pOnly(left: 20),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Icon(Icons.account_circle, size: 30).pOnly(left: 20),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {},
                    buttonHeight: 40,
                    buttonWidth: 95,
                    itemHeight: 40,
                  ),
                ),
              ]).pOnly(left: 650),
            ).pOnly(top: 3, left: 3),
         HStack([
           Text('Hello,'),
           Text('  Selvam',style: TextStyle(color: Colors.amber))
         ]).pOnly(right: 1100,top: 30),
            VStack([
              HStack([
                ZStack([
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(border: Border.all(width:2,
                    color: Colors.grey),borderRadius: BorderRadius.circular(15)),
                    child: VStack([
                      Text('Total Institutes',style: TextStyle(color: Color(0xff016C62),fontWeight: FontWeight.bold,fontSize: 18)).pOnly(left: 140,top: 25),
                      Container(
                        height: 28,
                        width: 105,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(50)),
                        child: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),).centered(),
                      ).pOnly(left: 147,top: 16)
                    ]),
                  ),
                  VxCircle(
                    radius: 90,
                    backgroundColor: Colors.grey,
                  ).pOnly(top: 15,left: 14)
                ]),
                ZStack([
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(border: Border.all(width:2,
                        color: Colors.grey),borderRadius: BorderRadius.circular(15)),
                    child: VStack([
                      Text('Colleges',style: TextStyle(color: Color(0xff016C62),fontWeight: FontWeight.bold,fontSize: 18)).pOnly(left: 165,top: 25),
                      Container(
                        height: 28,
                        width: 105,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(50)),
                        child: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),).centered(),
                      ).pOnly(left: 147,top: 16)
                    ]),
                  ),
                  VxCircle(
                    radius: 90,
                    backgroundColor: Colors.grey,
                  ).pOnly(top: 15,left: 14)
                ]).pOnly(left: 10),
                ZStack([
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(border: Border.all(width:2,
                        color: Colors.grey),borderRadius: BorderRadius.circular(15)),
                    child: VStack([
                      Text('Schools',style: TextStyle(color: Color(0xff016C62),fontWeight: FontWeight.bold,fontSize: 18)).pOnly(left: 165,top: 25),
                      Container(
                        height: 28,
                        width: 105,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(50)),
                        child: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),).centered(),
                      ).pOnly(left: 147,top: 16)
                    ]),
                  ),
                  VxCircle(
                    radius: 90,
                    backgroundColor: Colors.grey,
                  ).pOnly(top: 15,left: 14)
                ]).pOnly(left: 10),
                ZStack([
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(border: Border.all(width:2,
                        color: Colors.grey),borderRadius: BorderRadius.circular(15)),
                    child: VStack([
                      Text('Private Institues',style: TextStyle(color: Color(0xff016C62),fontWeight: FontWeight.bold,fontSize: 18)).pOnly(left: 135,top: 25),
                      Container(
                        height: 28,
                        width: 105,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(50)),
                        child: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),).centered(),
                      ).pOnly(left: 147,top: 16)
                    ]),
                  ),
                  VxCircle(
                    radius: 90,
                    backgroundColor: Colors.grey,
                  ).pOnly(top: 15,left: 14)
                ]).pOnly(left: 10),
              ]).pOnly(top: 20),
              HStack([
                ZStack([
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(border: Border.all(width:2,
                        color: Colors.grey),borderRadius: BorderRadius.circular(15)),
                    child: VStack([
                      Text('Branches',style: TextStyle(color: Color(0xff016C62),fontWeight: FontWeight.bold,fontSize: 18)).pOnly(left: 162,top: 25),
                      Container(
                        height: 28,
                        width: 105,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(50)),
                        child: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),).centered(),
                      ).pOnly(left: 147,top: 16)
                    ]),
                  ),
                  VxCircle(
                    radius: 90,
                    backgroundColor: Colors.grey,
                  ).pOnly(top: 15,left: 14)
                ]).pOnly(left: 150),
                ZStack([
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(border: Border.all(width:2,
                        color: Colors.grey),borderRadius: BorderRadius.circular(15)),
                    child: VStack([
                      Text('Faculties',style: TextStyle(color: Color(0xff016C62),fontWeight: FontWeight.bold,fontSize: 18)).pOnly(left: 162,top: 25),
                      Container(
                        height: 28,
                        width: 105,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(50)),
                        child: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),).centered(),
                      ).pOnly(left: 147,top: 16)
                    ]),
                  ),
                  VxCircle(
                    radius: 90,
                    backgroundColor: Colors.grey,
                  ).pOnly(top: 15,left: 14)
                ]).pOnly(left: 10),
                ZStack([
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(border: Border.all(width:2,
                        color: Colors.grey),borderRadius: BorderRadius.circular(15)),
                    child: VStack([
                      Text('Students',style: TextStyle(color: Color(0xff016C62),fontWeight: FontWeight.bold,fontSize: 18)).pOnly(left: 160,top: 25),
                      Container(
                        height: 28,
                        width: 105,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 2),borderRadius: BorderRadius.circular(50)),
                        child: Text('10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),).centered(),
                      ).pOnly(left: 147,top: 16)
                    ]),
                  ),
                  VxCircle(
                    radius: 90,
                    backgroundColor: Colors.grey,
                  ).pOnly(top: 15,left: 14)
                ]).pOnly(left: 10),
              ]).pOnly(top: 20)
            ]),
          ]),
      ]),
    );
  }
}
