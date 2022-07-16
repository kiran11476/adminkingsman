import 'package:admin/screens/sceenlogin.dart/drawer/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreeenHome extends StatelessWidget {
  const ScreeenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('KingsMan'),
          backgroundColor: CupertinoColors.black,
        ),
        drawer: const ScreenDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromARGB(255, 88, 6, 2)),
                    height: 80,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Total Users',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).canvasColor),
                          ),
                        ),
                        Text(
                          '4',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context).canvasColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromARGB(142, 11, 90, 174)),
                    height: 80,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Todays Collection',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).canvasColor),
                          ),
                        ),
                        Text(
                          '4',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context).canvasColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Weekly Task',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                )),
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe5RhZF_CP3CBAiMo5rqVFqqaoOIjaenV2Vw&usqp=CAU'))),
              )
            ],
          ),
        ));
  }
}
