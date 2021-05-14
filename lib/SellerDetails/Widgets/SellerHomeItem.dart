import 'package:flutter/material.dart';
SellerHomeDetails_WithIcon({BuildContext context,String title,IconData icon}){
  return Padding(
    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
    child:   Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(title,style: TextStyle(color: Colors.white,fontSize: 14),),
        SizedBox(width: 5,),
        Icon(icon,color: Colors.white,size: 30,),
      ],),
  );
}

SellerHomeDetails_WithImage({BuildContext context,String title,String image}){
  return Padding(
    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
    child:   Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(title,style: TextStyle(color: Colors.white,fontSize: 14),),
        SizedBox(width: 5,),
        Image.asset(image,color: Colors.white,width: 30,height: 30,),
      ],),
  );
}

List<Map<String, dynamic>>  sellerProducerList=[
  {'title':'باكيت كنتاكي 1','image':'Assets/market1.jpg','price':'100'},
  {'title':'باكيت كنتاكي 2','image':'Assets/market2.jpg','price':'50'},
  {'title':'باكيت كنتاكي 3','image':'Assets/market1.jpg','price':'150'},
  {'title':'باكيت كنتاكي 4','image':'Assets/market2.jpg','price':'200'},
  {'title':'باكيت كنتاكي 5','image':'Assets/market1.jpg','price':'300'},
];
SellerProducerItem({BuildContext context,String title,String image,String price}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 200 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      //  color: Colors.deepPurple,
        image: DecorationImage(image: AssetImage(image),fit:BoxFit.cover )
      ),
      child: Stack(
        children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200 ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(.3),
          ),
        ),

          Positioned(
              left: 20,
              bottom: 20,
              child: Text('\$'+price,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)),

          Positioned(
              right: 20,
              bottom: 20,
              child: Text(title,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),))
      ],),
    ),
  );
}


class CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*1/3,
              color: Colors.transparent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*1/3-60,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50) ),
                  image: DecorationImage(image: AssetImage("Assets/market2.jpg"),fit: BoxFit.cover)
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*1/3-60,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.2),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50) ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*1/3-140,
              right: MediaQuery.of(context).size.width/4+20,
              child:Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green,
                    image: DecorationImage(image: AssetImage("Assets/market1.jpg"),fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.2, .2), //(x,y)
                        blurRadius: 2.0,
                      ),
                    ]
                ),
              ),
            ),
          ],),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 5,left: 5,top: 15,bottom: 15),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    // SellerHomeDetails_WithIcon(context: context,title: "كنتاكي",icon: Icons.person),
                    SellerHomeDetails_WithIcon(context: context,title: "0121 003 5476",icon: Icons.phone_android),
                    SellerHomeDetails_WithIcon(context: context,title: "040 2246464",icon: Icons.phone),
                    SellerHomeDetails_WithIcon(context: context,title: "12Pm -12Am",icon: Icons.timer),
                    SellerHomeDetails_WithImage(context: context,title: "لينك الفيس",image: "Assets/icons/faceb.png"),
                    SellerHomeDetails_WithImage(context: context,title: "0121 003 5476",image: "Assets/icons/whatsb.png"),
                    SellerHomeDetails_WithIcon(context: context,title: "رقم17 ش شكرى القواتلى، المحلة الكبرى (قسم 2)",icon: Icons.home),
                    Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                      child:   Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("شكري",style: TextStyle(color: Colors.white,fontSize: 17),),
                          Text("  -  ",style: TextStyle(color: Colors.white,fontSize: 17),),
                          Text("المحلة الكبري",style: TextStyle(color: Colors.white,fontSize: 17),),
                          Text("  -  ",style: TextStyle(color: Colors.white,fontSize: 17),),
                          Text("الغربية",style: TextStyle(color: Colors.white,fontSize: 17),),
                          SizedBox(width: 5,),
                          Icon(Icons.location_on,color: Colors.white,size: 30,),
                        ],),
                    )

                  ],),
                ),
              ),
            ),
          ),

          SizedBox(height: 1,),
        ],
      ),
    );
  }
}


void showAlertDeleteProduct(BuildContext context) {
  String _product;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20.0)), //this right here
                child: Container(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("هل تريد مسح هذا المنتج ؟ ",style: TextStyle(color: Colors.black,fontSize: 23),),

                          Row( crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.pop(context);

                                  });
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width/4,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(child: Text(" لا ",style: TextStyle(color: Colors.white,fontSize: 20),),),
                                ),
                              ),

                              SizedBox(width: 30,),
                              InkWell(
                                onTap: (){
                                  setState(() {

                                  });
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width/4,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(child: Text(" نعم ",style: TextStyle(color: Colors.white,fontSize: 20),),),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
        );
      });
}






