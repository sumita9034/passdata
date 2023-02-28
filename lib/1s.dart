import 'package:flutter/material.dart';
import 'package:passdata1/2s.dart';
class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  late  String arg1='';

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1st screen'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){

              Navigator.push(context,MaterialPageRoute(builder: (context)=>second()))

                  .then((value) {
                    print("test");
                    setState(() {
                      arg1 = value.toString();
                    });
              } );

            }, child:Icon(Icons.arrow_forward)),
            Text(arg1)
          ],
        ),
      )
    );
  }
}
