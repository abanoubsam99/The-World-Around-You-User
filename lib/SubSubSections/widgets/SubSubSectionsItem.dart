import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Markets/AllMarket/Screens/MarketsScreen.dart';



class SubSubSectionItem extends StatelessWidget {
  String image, title;
  int subsectionID,governorateID,cityID;


  SubSubSectionItem({@required this.title, @required this.image,@required this.subsectionID,@required this.governorateID,@required this.cityID});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MarketsScreen(
                      SectionID: subsectionID,
                      SectionName: title,
                      governorateID: governorateID,
                      cityID: cityID,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.2, .2), //(x,y)
                blurRadius: 2.0,
              ),
            ]

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              image,
              scale: 1.5,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
