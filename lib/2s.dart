import 'package:flutter/material.dart';
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  TextEditingController t1= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (Text('second screen')),),
      
      body: Center(
        child: Column(

          children: [
            TextFormField(controller: t1,),
            ElevatedButton(onPressed: (){
              
              Navigator.pop(context,t1.text.toString());
            }, child: Icon(Icons.arrow_back))
          ],
        ),
      ),
    );
  }
}
