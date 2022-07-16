import 'package:admin/screens/sceenlogin.dart/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyAp());
}

class MyAp extends StatelessWidget {
  const MyAp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: LogInScreen());

    //   BlocProvider(
    //     create: (context) => BottomNavCubit(),
    //     child: const
    //   ),
    // );
  }
}
