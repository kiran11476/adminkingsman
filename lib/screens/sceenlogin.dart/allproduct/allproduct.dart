import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenAllProduct extends StatelessWidget {
  const ScreenAllProduct({Key? key}) : super(key: key);

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
            tileColor: CupertinoColors.systemGrey5,
            leading: Text('${index + 1}'),
            title: const Text('data'),
            subtitle: const Text('Admin@gmail.com'),
            trailing: const SizedBox(
              height: 80,
              width: 80,
              child: Image(
                  image: NetworkImage(
                      'https://m.media-amazon.com/images/I/81i057rz8gS._UL1500_.jpg')),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
      ),
    );
  }
}
