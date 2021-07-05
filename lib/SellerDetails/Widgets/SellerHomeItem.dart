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

class CustomSliverAppBar extends StatelessWidget {
  String name,phone1,phone2,time,face,whats,address, imgcigwer,imglogo,governorate,city,area;
  int marketid;
  int Planid;
  CustomSliverAppBar({@required this.governorate,@required this.city,@required this.area,@required this.name,@required this.phone1,@required this.phone2,@required this.time,@required this.face,
    @required this.whats,@required  this.address,@required  this.imgcigwer,@required  this.imglogo,@required  this.marketid});
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
                  image: DecorationImage(image: NetworkImage(imgcigwer==null?"https://image.freepik.com/free-vector/young-people-smiling-blue-background_18591-52402.jpg":imgcigwer),fit: BoxFit.cover)
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
                    image: DecorationImage(image: NetworkImage(imglogo==null?'https://image.freepik.com/free-vector/young-people-smiling-blue-background_18591-52397.jpg':imglogo),fit: BoxFit.cover),
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

                      SellerHomeDetails_WithIcon(context: context,title: phone1,icon: Icons.phone_android),
                      SellerHomeDetails_WithIcon(context: context,title: phone2,icon: Icons.phone),
                      SellerHomeDetails_WithIcon(context: context,title: time,icon: Icons.timer),
                      SellerHomeDetails_WithImage(context: context,title: face,image: "Assets/icons/faceb.png"),
                      SellerHomeDetails_WithImage(context: context,title: whats,image: "Assets/icons/whatsb.png"),
                      SellerHomeDetails_WithIcon(context: context,title: address,icon: Icons.home),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                        child:   Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(area,style: TextStyle(color: Colors.white,fontSize: 17),),
                            Text("  -  ",style: TextStyle(color: Colors.white,fontSize: 17),),
                            Text(city,style: TextStyle(color: Colors.white,fontSize: 17),),
                            Text("  -  ",style: TextStyle(color: Colors.white,fontSize: 17),),
                            Text(governorate,style: TextStyle(color: Colors.white,fontSize: 17),),
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


