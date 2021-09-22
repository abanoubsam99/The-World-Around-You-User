import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_world_around_you_user/SellerDetails/Controller/ProductsController.dart';
import 'package:the_world_around_you_user/SellerDetails/Model/ProductsModel.dart';
import 'package:the_world_around_you_user/SellerDetails/Widgets/SellerHomeItem.dart';
import 'package:the_world_around_you_user/SellerDetails/Widgets/SellerProduct.dart';


class SellerHomeScreen extends StatefulWidget {
  String name,
      phone1,
      phone2,
      time,
      face,
      whats,
      address,
      imgcigwer,
      imglogo,
      governorate,
      city,
      area;
  int marketid;

  SellerHomeScreen(
      {@required this.governorate,
        @required this.city,
        @required this.area,
        @required this.name,
        @required this.phone1,
        @required this.phone2,
        @required this.time,
        @required this.face,
        @required this.whats,
        @required this.address,
        @required this.imgcigwer,
        @required this.imglogo,
        @required this.marketid});

  @override
  _SellerHomeScreenState createState() => _SellerHomeScreenState();
}

class _SellerHomeScreenState extends State<SellerHomeScreen> {
  ProductsModel _productsModel = ProductsModel();
  ProductsController _productsController = ProductsController();
  bool _loading = true;

  _getProducts() async {
    _productsModel = await _productsController.GetProducts(id: widget.marketid);
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _getProducts();
    super.initState();
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  showSnackBar(BuildContext context){

    final snackBar = SnackBar(
      content: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('لا توجد منتجات لعرضها'),
        ],
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width/2,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(widget.imgcigwer==null?"https://image.freepik.com/free-psd/city-food-billboard-mock-up_23-2149012701.jpg":widget.imgcigwer),fit: BoxFit.cover)
          ),
          child: Align(alignment: Alignment.topLeft,child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,size: 25,), onPressed: () { Navigator.pop(context); },)) ,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.name,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(widget.imglogo==null?"https://image.freepik.com/free-vector/young-people-smiling-blue-background_18591-52397.jpg":widget.imglogo),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
          ],),
        ),

        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,),
          child: Padding(
            padding: const EdgeInsets.only(right: 5,left: 5,top: 5,bottom: 5),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("المعلومات الاساسية",style: TextStyle(color: Colors.white,decoration: TextDecoration.underline,fontSize: 17,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SellerHomeDetails_WithIcon(context: context,title: widget.phone1,icon: Icons.phone_android),
                SellerHomeDetails_WithIcon(context: context,title: widget.phone2,icon: Icons.phone),
                SellerHomeDetails_WithIcon(context: context,title: widget.time,icon: Icons.timer),
                SellerHomeDetails_WithImage(context: context,title: widget.face,image: "Assets/icons/faceb.png"),
                SellerHomeDetails_WithImage(context: context,title: widget.whats,image: "Assets/icons/whatsb.png"),
                SellerHomeDetails_WithIcon(context: context,title: widget.address,icon: Icons.home),
                Padding(
                  padding: const EdgeInsets.only(top: 3,bottom: 3,right: 10,left: 10),
                  child:   Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(widget.area,style: TextStyle(color: Colors.white,fontSize: 17),),
                      Text("  -  ",style: TextStyle(color: Colors.white,fontSize: 17),),
                      Text(widget.city,style: TextStyle(color: Colors.white,fontSize: 17),),
                      Text("  -  ",style: TextStyle(color: Colors.white,fontSize: 17),),
                      Text(widget.governorate,style: TextStyle(color: Colors.white,fontSize: 17),),
                      SizedBox(width: 5,),
                      Icon(Icons.location_on,color: Colors.white,size: 20,),
                    ],),
                )

              ],),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             InkWell(onTap: (){
               // ignore: unnecessary_statements
               _productsModel.data.isEmpty?null:Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SellerProduct(
                 name: widget.name,
                 productsModel: _productsModel,
               )));
              },child: Text("شاهد الكل",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 15),)),
              Text("المنتجات المقدمة",style: TextStyle(color: Colors.black,decoration: TextDecoration.underline,fontSize: 17,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        _loading ?
        Center(child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),)
            : _productsModel.data.isEmpty? Container(child: Center(child: Text("لم يتم اضافة منتجات  "),),)
            :Directionality(
          textDirection: TextDirection.rtl,
              child: Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: _productsModel.data.length,
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: Column(children: [
                        Container(
                          width: MediaQuery.of(context).size.width/3,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor.withOpacity(.4),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: NetworkImage(_productsModel.data[index].photo ==null
                                                          ? 'https://image.freepik.com/free-photo/vegetables-set-left-black-slate_1220-685.jpg'
                                                          : _productsModel.data[index].photo)
                              ,fit: BoxFit.cover),
                          ),
                        ),
                        Text(_productsModel.data[index].name,style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold ),),
                        Text(_productsModel.data[index].price.toString()+" جنيه",style: TextStyle(color: Theme.of(context).primaryColor),),

                      ],)
                    ),
                  );
                }),
        ),
            )

      ],),
    );
    //   Scaffold(
    //   body: CustomScrollView(
    //     slivers: <Widget>[
    //       SliverAppBar(
    //         pinned: true,
    //         floating: false,
    //         snap: false,
    //         expandedHeight: MediaQuery.of(context).size.height * 2 / 3 + 100,
    //         title: Text(widget.name),
    //         centerTitle: true,
    //         flexibleSpace: FlexibleSpaceBar(
    //           background: CustomSliverAppBar(
    //             marketid: widget.marketid,
    //             whats: widget.whats,
    //             time: widget.time,
    //             phone2: widget.phone2,
    //             phone1: widget.phone1,
    //             imglogo: widget.imglogo,
    //             imgcigwer: widget.imgcigwer,
    //             face: widget.face,
    //             address: widget.address,
    //             name: widget.name,
    //             city: widget.city,
    //             governorate: widget.governorate,
    //             area: widget.area,
    //           ),
    //         ),
    //       ),
    //       SliverList(
    //         delegate: _loading
    //             ? SliverChildBuilderDelegate(
    //               (BuildContext context, int index) {
    //             return Center(
    //               child: CircularProgressIndicator(
    //                 backgroundColor: Theme.of(context).primaryColor,
    //               ),
    //             );
    //           },
    //           childCount: 1,
    //         )
    //             : _productsModel.data.isEmpty
    //             ? SliverChildBuilderDelegate(
    //               (BuildContext context, int index) {
    //             return Container(child: Center(child: Text("لم يتم اضافة منتج   "),),);
    //           },
    //           childCount: 1,
    //         )
    //             : SliverChildBuilderDelegate(
    //               (BuildContext context, int index) {
    //             return Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Container(
    //                 width: MediaQuery.of(context).size.width,
    //                 height: 200,
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(10),
    //                     //  color: Colors.deepPurple,
    //                     image: DecorationImage(
    //                         image: NetworkImage(_productsModel
    //                             .data[index].photo ==
    //                             null
    //                             ? 'https://img.freepik.com/free-photo/futuristic-pedestal-display-blank-podium-product-3d-rendering_39972-115.jpg?size=338&ext=jpg'
    //                             : _productsModel.data[index].photo),
    //                         fit: BoxFit.cover)),
    //                 child: Stack(
    //                   children: [
    //                     Container(
    //                       width: MediaQuery.of(context).size.width,
    //                       height: 200,
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(10),
    //                         color: Colors.black.withOpacity(.2),
    //                       ),
    //                     ),
    //                     Positioned(
    //                         left: 20,
    //                         bottom: 20,
    //                         child: Text(
    //                           '\$' +
    //                               _productsModel.data[index].price
    //                                   .toString(),
    //                           style: TextStyle(
    //                               color: Colors.white,
    //                               fontSize: 17,
    //                               fontWeight: FontWeight.bold),
    //                         )),
    //                     Positioned(
    //                         right: 20,
    //                         bottom: 20,
    //                         child: Text(
    //                           _productsModel.data[index].name,
    //                           style: TextStyle(
    //                               color: Colors.white,
    //                               fontSize: 17,
    //                               fontWeight: FontWeight.bold),
    //                         ))
    //                   ],
    //                 ),
    //               ),
    //             );
    //           },
    //           childCount: _productsModel.data.length,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    //

  }
}
