import 'package:flutter/material.dart';

class SinupScreane extends StatefulWidget {
  const SinupScreane({super.key});

  @override
  State<SinupScreane> createState() => _SinupScreaneState();
}

class _SinupScreaneState extends State<SinupScreane> {
  GlobalKey<FormState> frmKey = GlobalKey();

  TextEditingController emaillContoroler = TextEditingController();
  TextEditingController nameContoroler = TextEditingController();
  TextEditingController paswwordContoroler = TextEditingController();
  String? gender = 'female';
  bool? ispAcseptdCondeshin = false;
  bool? isPoslispAcseptdCondeshin = false;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: frmKey,
            child: Container(
                margin: EdgeInsets.all(17),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/accoune.png')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Colors
                                  .green)) /*,child: Icon(Icons.account_box,size:120,)*/
                      ,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: nameContoroler,
                      validator: (x) => x != null && x.isNotEmpty
                          ? null
                          : "this field is required",
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle),
                          hintText: "example : Mokhtar Ba-Ghaleb",
                          label: Text("your name : "),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: TextFormField(
                        controller: emaillContoroler,
                        validator: (x) => x != null && x.isNotEmpty
                            ? null
                            : "this field is required",
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle),
                            hintText: "example : mohammed@gmial.com",
                            label: Text("your emaill : "),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: TextFormField(
                        controller: paswwordContoroler,
                        validator: (x) => x != null && x.isNotEmpty
                            ? null
                            : "this field is required",
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password_rounded),
                            label: Text("Passwored"),
                            hintText: "Exzample: 12345",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text('male'),
                        Radio(
                          value: 'male',
                          groupValue: gender,
                          onChanged: (value) {
                            gender = value;
                            setState(() {});
                          },
                        ),
                        Text('female'),
                        Radio(
                          value: 'female',
                          groupValue: gender,
                          onChanged: (value) {
                            gender = value;
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ) ,
                    SizedBox(
                      height: 20,
                    ),Row(
                      children: [
                        Checkbox(value: ispAcseptdCondeshin, onChanged: (value) {ispAcseptdCondeshin = value!;
                          setState(() {

                          });
                        },),Text("Acsipted"),
                      ],
                    ),SizedBox(
                      height: 20,
                    ),Row(
                      children: [
                        Checkbox(value: isPoslispAcseptdCondeshin, onChanged: (value) {isPoslispAcseptdCondeshin = value!;
                          setState(() {

                          });
                        },),Text("polsi"),
                      ],
                    ),

                  ],
                )),
          ),
        ),floatingActionButton: FloatingActionButton(onPressed: (){
        if(frmKey.currentState!.validate()){

        }

      },child: Icon(Icons.save),)
      ),
    );
  }

}
