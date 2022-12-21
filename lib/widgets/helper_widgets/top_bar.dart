import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


class top_bar extends StatelessWidget {
   top_bar({Key? key}) : super(key: key);

   final List<String> items = [
     'My profile',
     'Contact us',
     'Log out',
   ];
   String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
      ).pOnly(top: 3, left: 3)
    ])
    );
  }
}
