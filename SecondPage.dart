import 'package:flutter/material.dart';
import 'package:mid2_test/applocale/applocale.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
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
                    onPressed: (){},
                    icon: Icon(Icons.clear)),
                ElevatedButton(
                    onPressed: (){}, 
                    child:Text(getLang(context, 'clear'))
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green
                  ),
                    onPressed: (){}, 
                    child: Text(getLang(context, 'login')))
              ],
            ),
          ),
          Container(
            color: Colors.blueAccent,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child:TextField(
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
