
import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/search/screens/searchMainScreen.dart';



ProvincesItem({BuildContext context,String title,String image}){
  return InkWell(
    onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (context) => SearchMainScreen()));
  },
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10,right: 20,left: 20,top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(15),topRight: Radius.circular(50),topLeft:Radius.circular(15) )
          ,boxShadow: [
          BoxShadow(
          color: Colors.grey,
          offset: Offset(0.2, .2), //(x,y)
          blurRadius: 2.0,
        ),
          ]
        ),
        child: Stack(
          children: [
          Positioned(
              right: 120,
              top: 20,
              child: Text(title,style: TextStyle(color: Colors.black,fontSize: 23),)),
          Positioned(
            right: 0,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                //color: Colors.red,
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
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
      ),
    ),
  );
}


List<Map<String, dynamic>> provinceslist = [
  { 'title':'القاهرة',  'image':'Assets/Provinces/cairo.png'  },
  { 'title':'الدقهلية',  'image':'Assets/Provinces/dakahlia.png'  },
  { 'title':'الاسكندرية',  'image':'Assets/Provinces/alexandria.png'  },
  { 'title':'الغربية',  'image':'Assets/Provinces/garbia.png'  },
  { 'title':'الشرقية',  'image':'Assets/Provinces/sharkia.png'  },
  { 'title':'البحيرة',  'image':'Assets/Provinces/behira.JPG'  },
  { 'title':'دمياط',  'image':'Assets/Provinces/damiitte.png'  },
  { 'title':'الاسماعيلية',  'image':'Assets/Provinces/smailya.png'  },
  { 'title':'الجيزة',  'image':'Assets/Provinces/giza.png'  },
  { 'title':'كفر الشيخ',  'image':'Assets/Provinces/kafrelshik.png'  },
  { 'title':'القليوبية',  'image':'Assets/Provinces/qalubia.png'  },
  { 'title':'بور سعيد',  'image':'Assets/Provinces/portsaid.PNG'  },
  { 'title':'المنوفية',  'image':'Assets/Provinces/mnofia.PNG'  },
  { 'title':'الفيوم',  'image':'Assets/Provinces/faum.png'  },
  { 'title':'اسيوط',  'image':'Assets/Provinces/assuit.png'  },
  { 'title':'اسوان',  'image':'Assets/Provinces/aswan.png'  },
  { 'title':'البحر الاحمر',  'image':'Assets/Provinces/bahrahmer.png'  },
  { 'title':'بني سويف',  'image':'Assets/Provinces/baniswif.png'  },
  { 'title':'الاقصر',  'image':'Assets/Provinces/louxer.gif'  },
  { 'title':'مرسي مطروح',  'image':'Assets/Provinces/matroh.PNG'  },
  { 'title':'المنيا',  'image':'Assets/Provinces/munya.jpg'  },
  { 'title':'شمال سيناء',  'image':'Assets/Provinces/northsina.png'  },
  { 'title':'قنا',  'image':'Assets/Provinces/qena.png'  },
  { 'title':'جنوب سيناء',  'image':'Assets/Provinces/sina.png'  },
  { 'title':'سهاج',  'image':'Assets/Provinces/suaj.png'  },
  { 'title':'الوادي الجديد',  'image':'Assets/Provinces/wady.png'  },
  { 'title':'السويس',  'image':'Assets/Provinces/suez.png'  },

];

