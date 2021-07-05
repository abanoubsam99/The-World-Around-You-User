import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/SellerDetails/Controller/ProductsController.dart';
import 'package:the_world_around_you_user/SellerDetails/Model/ProductsModel.dart';
import 'package:the_world_around_you_user/SellerDetails/Widgets/SellerHomeItem.dart';


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            snap: false,
            expandedHeight: MediaQuery.of(context).size.height * 2 / 3 + 100,
            title: Text(widget.name),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: CustomSliverAppBar(
                marketid: widget.marketid,
                whats: widget.whats,
                time: widget.time,
                phone2: widget.phone2,
                phone1: widget.phone1,
                imglogo: widget.imglogo,
                imgcigwer: widget.imgcigwer,
                face: widget.face,
                address: widget.address,
                name: widget.name,
                city: widget.city,
                governorate: widget.governorate,
                area: widget.area,
              ),
            ),
          ),
          SliverList(
            delegate: _loading
                ? SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                );
              },
              childCount: 1,
            )
                : _productsModel.data.isEmpty
                ? SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(child: Center(child: Text("لم يتم اضافة منتج   "),),);
              },
              childCount: 1,
            )
                : SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //  color: Colors.deepPurple,
                        image: DecorationImage(
                            image: NetworkImage(_productsModel
                                .data[index].photo ==
                                null
                                ? 'https://img.freepik.com/free-photo/futuristic-pedestal-display-blank-podium-product-3d-rendering_39972-115.jpg?size=338&ext=jpg'
                                : _productsModel.data[index].photo),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(.2),
                          ),
                        ),
                        Positioned(
                            left: 20,
                            bottom: 20,
                            child: Text(
                              '\$' +
                                  _productsModel.data[index].price
                                      .toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            right: 20,
                            bottom: 20,
                            child: Text(
                              _productsModel.data[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                );
              },
              childCount: _productsModel.data.length,
            ),
          ),
        ],
      ),
    );
  }
}
