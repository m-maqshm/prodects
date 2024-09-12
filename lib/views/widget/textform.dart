import 'package:flutter/material.dart';

class Text_Form extends StatelessWidget {
   Text_Form({Key? key,this.hint,this.icon,this.label,this.validateInput,
     this.topMargin=5,this.bottomMargin=5,this.rightMargin=5,this.leftMargin=5,this.controller,
     this.isPassword

   }): super(key: key);
   TextEditingController? controller = TextEditingController();
  bool? isPassword;
  String? hint;
  Widget? icon;
  Widget? label;
  double topMargin=5,bottomMargin=5,leftMargin=5,rightMargin=5;
  FormFieldValidator<String?>? validateInput;

  @override
  Widget build(BuildContext context) {

    return  Container(

      margin: EdgeInsets.only(left: leftMargin,right: rightMargin,top: topMargin,bottom: bottomMargin),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword??false,
        validator: validateInput,
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText: hint,
            label: label,

            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey[300]!)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey[300]!))),
      ),
    );
  }
}
