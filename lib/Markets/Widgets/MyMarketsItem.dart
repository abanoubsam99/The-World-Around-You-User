import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Markets/Model/AllMarketModel.dart';
import 'package:the_world_around_you_user/SellerDetails/Screens/SellerHomeScreen.dart';

class MyMarketsItem extends StatelessWidget {
  Data model;
  MyMarketsItem({this.model});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SellerHomeScreen(
            marketid:model.iD ,
            whats: model.whatsappNum,
            time: model.appoiment,
            phone2:model.mobile2 ,
            phone1:model.mobile1 ,
            imglogo: model.logo,
            imgcigwer:model.coverPhoto ,
            face: model.faceBookLink,
            address:model.address ,
            name: model.title,
            governorate:model.governorate ,
            city:model.city ,
            area: model.area,
          )));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 110,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.3),
                    spreadRadius: 1.0)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4+10,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(20)),
                    image: DecorationImage(
                        image: NetworkImage(model.logo==null?"https://image.freepik.com/free-vector/young-people-smiling-blue-background_18591-52397.jpg":model.logo), fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        model.title,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        model.mobile1,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        model.address,
                        style: TextStyle(color: Colors.black, fontSize: 10),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
