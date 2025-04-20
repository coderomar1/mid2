import 'package:flutter/material.dart';
import 'package:mid2_test/applocale/applocale.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getLang(context, 'homepage')),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Container(
              padding: const EdgeInsets.all(40),
              child: Text(getLang(context, "welcome"),
                style: TextStyle(color: Colors.blueGrey, fontSize: 25),))
        ],
      ),
    );
  }
}