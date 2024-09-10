import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String? byminType = 'عند الاستلام';
  GlobalKey<FormState> frmKeyee = GlobalKey();
   String? timeodre;
   TextEditingController nameController = TextEditingController();
   TextEditingController phonController = TextEditingController();
   TextEditingController notsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
      body: SingleChildScrollView(
          child: Container(
            
            margin: EdgeInsets.all(20),
            child: Form(
              key: frmKeyee,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
        children: [SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: TextFormField(

                controller: nameController,
                validator: (x) => x != null && x.isNotEmpty&&x.split(' ').length>2
                    ? null
                    : "this field is required",
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_rounded),
                    label: Text("اسم المستلم"),
                    hintText: "مثال: محمد صالح مقشم",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),Container(
              margin: EdgeInsets.only(top: 15),
              child: TextFormField(
                keyboardType:TextInputType.phone ,
                controller: phonController,
                validator: (x) => x != null && x.isNotEmpty&&x.length>=9&&(x.startsWith('77')||x.startsWith('78')||x.startsWith('73')||x.startsWith('71'))
                    ? null
                    : "this field is required",
                decoration: InputDecoration(

                    prefixIcon: Icon(Icons.password_rounded),
                    label: Text("رقم الجوال"),
                    hintText: "مثال: 772725459",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
          Container(
            color: Colors.grey,
            width: 300,
            height: 70,
            child: DropdownButton(value: timeodre,
            items: [DropdownMenuItem(child: Text('صباحاً'),value: 'm',),DropdownMenuItem(child: Text('عصرا'),value: 'a',),DropdownMenuItem(child: Text('مساءً'),value: 'e',),], onChanged: (x) {
              timeodre = x;
              setState(() {

              });
            },),),
          Text('طريقة الدفع'),
                Row(
                  children: [
                    Radio(
                      value: 'عند الاستلام',
                      groupValue: byminType ,
                      onChanged: (value) {
                        byminType = value;
                        setState(() {});
                      },),
                    Text("عند الاستلام")],
                ), Row(
                  children: [
                    Radio(
                      value: 'العمقي',
                      groupValue: byminType ,
                      onChanged: (value) {
                        byminType = value;
                        setState(() {});
                      },),
                    Text("العمقي")],
                ), Row(
                  children: [
                    Radio(
                      value: 'الكريمي',
                      groupValue: byminType ,
                      onChanged: (value) {
                        byminType = value;
                        setState(() {});
                      },),
                    Text("الكريمي")],
                ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: TextFormField(
              maxLines: 4,
              controller: notsController,

              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.note_add_sharp),
                  label: Text("ملاحظة"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ), ElevatedButton(onPressed: () {
    if(frmKeyee.currentState!.validate()){

      }
          }, child: Text("طلب"))

        ],
      )),
          )),
    // floatingActionButton: FloatingActionButton(onPressed: (){
    //   if(frmKeyee.currentState!.validate()){
    //
    //   }
    //
    // },child: Icon(Icons.save),)
          ));
  }
}
