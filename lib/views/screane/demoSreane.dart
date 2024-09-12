import 'package:flutter/material.dart';

class DemoStalFullScrean extends StatefulWidget {
  const DemoStalFullScrean({super.key});

  @override
  State<DemoStalFullScrean> createState() => _DemoStalFullScreanState();
}

class _DemoStalFullScreanState extends State<DemoStalFullScrean> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Screane'),),
      body: Center(child: Text("cuonter $x",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blue),)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        x++;
        setState(() {

        });

      },child: Icon(Icons.add),),
    );
  }
}
