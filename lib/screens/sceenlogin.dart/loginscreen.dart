import 'package:admin/screens/sceenlogin.dart/homepage/homepage.dart';
import 'package:admin/screens/sceenlogin.dart/widgets/backgroundimage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

late Size size;

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.systemGrey5,
        appBar: AppBar(
          title: const Text('KingsMan'),
          backgroundColor: CupertinoColors.black,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              const BackgroundImage(
                  image:
                      'https://t3.ftcdn.net/jpg/03/67/38/78/360_F_367387846_OKdglMdC8NSHIaW65XUoiVfTjErAcOdr.jpg'),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: CupertinoTextFormFieldRow(
                      placeholder: 'Enter your Email',
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: CupertinoColors.white,
                          border: Border.all(color: CupertinoColors.white)),
                    ),
                  ),
                  CupertinoTextFormFieldRow(
                    obscureText: true,
                    placeholder: 'Enter your password',
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: CupertinoColors.white,
                        border: Border.all(
                            color: Theme.of(context).backgroundColor)),
                  ),
                  CupertinoButton(
                    color: const Color.fromARGB(147, 227, 237, 229),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => const ScreeenHome()));
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
