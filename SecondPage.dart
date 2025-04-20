import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mid2_test/applocale/applocale.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
   State<StatefulWidget> createState() => _SecondPage();


}

class _SecondPage extends State<SecondPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var show = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(getLang(context, 'homepage'),),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child:   TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  hintText: getLang(context, 'username'),
                  filled: true,
                fillColor: Colors.green,
              ),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child:TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: getLang(context, 'password'),
                filled: true,
                fillColor: Colors.green,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.blueAccent,
            child:Row(
              children: [
                IconButton(
                    onPressed: (){
                      exit(0);
                    },
                    icon: Icon(Icons.clear)),
                ElevatedButton(
                    onPressed: (){
                      usernameController.text = " ";
                      passwordController.text= " ";
                      show.text = " ";
                    },
                    child:Text(getLang(context, 'clear'))
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green
                  ),
                    onPressed: (){
                        show.text = usernameController.text + " : " + passwordController.text;
                    },
                    child: Text(getLang(context, 'login')))
              ],
            ),
          ),
          Container(
            color: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child:TextField(
              controller: show,
              decoration: InputDecoration(
                hintText: getLang(context, 'show'),
                filled: true,
                fillColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
