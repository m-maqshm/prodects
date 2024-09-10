import 'package:flutter/material.dart';

class FinshedOrder extends StatelessWidget {
  const FinshedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(child: Text("تم ارسال طلبك بنجاح",style: TextStyle(fontSize: 30),)),
    ));
  }
}
