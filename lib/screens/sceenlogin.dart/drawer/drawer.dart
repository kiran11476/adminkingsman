import 'dart:io';

import 'package:admin/screens/sceenlogin.dart/admi/adminpage.dart';
import 'package:admin/screens/sceenlogin.dart/allproduct/allproduct.dart';
import 'package:admin/screens/sceenlogin.dart/homepage/homepage.dart';
import 'package:admin/screens/sceenlogin.dart/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ScreenDrawer extends StatelessWidget {
  const ScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: CupertinoColors.systemGrey,
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: 200,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Kings Man',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const ScreenAdmin());
            },
            child: tileList(
              'Admin',
            ),
          ),

          GestureDetector(
              onTap: () {
                Get.to(const ScreenAllProduct());
              },
              child: tileList(' All products')),
          GestureDetector(
            onTap: () {
              Get.to(const ScreenOrders());
            },
            child: tileList('All orders'),
          ),

          GestureDetector(onTap: () => exit(0), child: tileList('Exit')),
          const SizedBox(
            height: 50,
          ),
          // const Text(
          //   ' Version 2.0.1',
          //   textAlign: TextAlign.end,
          //   style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          // ),
        ],
      ),
    );
  }
}

Widget tileList(
  String title,
) {
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),
      ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ],
  );
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(5),
    ),
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Privacy policy"),
    content: SizedBox(
      height: 300,
      width: 200,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('dsd'),
          ],
        ),
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
