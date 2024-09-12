import 'package:flutter/material.dart';
import 'package:untitled1/models/product.dart';
import 'package:untitled1/viewmodels/products_vm.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductsVM pVM = ProductsVM();
late  List<Product> allProducts;
void initState() {
    // TODO: implement initState
   allProducts = pVM.loadAllProducts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


  return Scaffold(

        appBar: AppBar(
          actions: [
            Container(
              child: Badge(
                  child: Icon(Icons.shopping_cart),
                  label: Text("${ProductsVM.cartItems.length}")),
              margin: EdgeInsets.only(top: 10, right: 10),
            ),
          ],
          title: Text("Home Screen"),
        ),
        body: ListView.builder(
            itemCount: allProducts.length,
            itemBuilder: (ctx, index) {
              return Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/details",
                          arguments: allProducts[index]);
                      // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsScreen(),settings: RouteSettings(arguments: allProducts[index])));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(clipBehavior: Clip.none, children: [
                            // Positioned(
                            //     top: 10,
                            //     child: Icon(Icons.favorite_outline,color: Colors.red,size: 50,)
                            // ),
                            Positioned(
                              right: -20,
                              top: 5,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                    child: Text(
                                  "20%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                            Image.network(allProducts[index].image)
                          ]),
                          // Image.network("https://storage.googleapis.com/pod_public/1300/168838.jpg"),
                          ListTile(
                            leading: IconButton(
                                onPressed: () {
                                  ProductsVM.addToCart(
                                      p: allProducts[index], qty: 1);
                                  setState(() {});
                                },
                                icon: Icon(Icons.add)),
                            subtitle: Text(allProducts[index].brand),
                            title: Text(allProducts[index].name),
                            trailing: Text("${allProducts[index].price}"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 12,
                      left: 10,
                      child:  allProducts[index].likeid? InkWell(
                        onTap: () {
                          allProducts[index].likeid =false;
                          setState(() {
                            
                          });
                        },
                          child: Icon(Icons.favorite,color: Colors.red,))   :  InkWell(
                        onTap: () {
                          allProducts[index].likeid =true;
                          setState(() {
                            
                          });
                        },child: Icon(Icons.favorite_border,color: Colors.red,),
                               
                            )),
                ],
              );
            }));
  }
}
