import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenAdmin extends StatelessWidget {
  const ScreenAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
        title: const Text('KingsMan'),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: const Text('data'),
            subtitle: const Text('Admin@gmail.com'),
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider(
            indent: 5,
            endIndent: 5,
            thickness: 5,
          );
        },
      ),
    );
  }
}
