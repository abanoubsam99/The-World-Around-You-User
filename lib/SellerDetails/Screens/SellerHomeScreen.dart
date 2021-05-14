import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/SellerDetails/Widgets/SellerHomeItem.dart';

class SellerHomeScreen extends StatefulWidget {
  @override
  _SellerHomeScreenState createState() => _SellerHomeScreenState();
}

class _SellerHomeScreenState extends State<SellerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true, floating: false, snap: false,
            expandedHeight: MediaQuery.of(context).size.height*2/3+100,
            title: Text("كنتاكي"),
            centerTitle: true,
            flexibleSpace:  FlexibleSpaceBar(
              background: CustomSliverAppBar(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return SellerProducerItem(
                    context: context,
                    title: sellerProducerList[index]['title'] ,
                    image: sellerProducerList[index]['image'] ,
                    price:sellerProducerList[index]['price'] , );
              },
              childCount: sellerProducerList.length,
            ),
          ),
        ],
      ),

    );

  }
}
