import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled1/models/product.dart';
import 'package:untitled1/viewmodels/products_vm.dart';

class DetailsScreen extends StatefulWidget {
   Product p;

  DetailsScreen({Key? key , required this.p}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  late String pathimeg;
  void initState() {
    // TODO: implement initState
    // widget.p = ModalRoute.of(context)!.settings.arguments as Product;
    pathimeg = widget.p.image;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    print("the image is ${widget.p.thumbnails[0]}");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.p.name),
        actions: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context,"/cart",arguments: ProductsVM.cartItems);
            },
            child: Container(
              child: Badge(child: Icon(Icons.shopping_cart),label: Text("${ProductsVM.cartItems.length}")),
              margin: EdgeInsets.only(top: 10,right: 10),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(pathimeg),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                children: widget.p.thumbnails
                    .map((e) => InkWell(
                  onTap: () {
                    pathimeg =e;
                    setState(() {

                    });
                  },
                      child: Container(
                  margin: EdgeInsets.all(5),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300]),
                            child: Center(
                              child: Image.network(e),
                            ),
                          ),
                    ))
                    .toList(),
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.p.brand),
                  Text(widget.p.price.toString()),
                ],),
            ),
            SizedBox(height: 15,),
            Text(widget.p.description)

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {


        });
        ProductsVM.addToCart(p: widget.p,qty: 1);
      },child: Icon(Icons.add_shopping_cart),),
    );
  }
}
