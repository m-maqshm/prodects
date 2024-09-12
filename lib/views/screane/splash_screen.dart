import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    });
    return Scaffold(
      body: Center(
          child: Container(
            height: 400,
            child: Column(

        children: [
            Icon(Icons.production_quantity_limits,color: Colors.green,size: 300,),
            Text('halooo'),

        ],
      ),
          )),
    );
  }
}
