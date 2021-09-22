import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/SellerDetails/Model/ProductsModel.dart';
class SellerProduct extends StatefulWidget {
  String name;
  ProductsModel  productsModel;
  SellerProduct({this.productsModel,this.name});
  @override
  _SellerProductState createState() => _SellerProductState();
}

class _SellerProductState extends State<SellerProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body:Directionality(textDirection: TextDirection.rtl,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widget.productsModel.data.length,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.4),
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(image: NetworkImage(widget.productsModel.data[index].photo ==null
                        ? 'https://image.freepik.com/free-photo/vegetables-set-left-black-slate_1220-685.jpg'
                        : widget.productsModel.data[index].photo)
                        ,fit: BoxFit.cover),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(widget.productsModel.data[index].name,style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 17 ),),
                  Text(widget.productsModel.data[index].price.toString()+" جنيه",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 17 ),),
                ],)
              ],),
            );
          }),)
    );
  }
}
