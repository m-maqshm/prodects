import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({Key? key,required this.text,required this.event}) : super(key: key);
  late String text;
  late VoidCallback event;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: event, child: Text(text));
  }
}
