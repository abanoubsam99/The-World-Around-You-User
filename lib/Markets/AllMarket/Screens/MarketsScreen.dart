import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Markets/Controller/Market%20Controller.dart';
import 'package:the_world_around_you_user/Markets/Model/AllMarketModel.dart';
import 'package:the_world_around_you_user/Markets/Widgets/MyMarketsItem.dart';
import 'package:the_world_around_you_user/SellerDetails/Screens/SellerHomeScreen.dart';


class MarketsScreen extends StatefulWidget {
  String SectionName;
  int SectionID,governorateID,cityID;
  MarketsScreen({@required this.SectionID,@required this.SectionName,@required this.governorateID,@required this.cityID});

  @override
  _MarketsScreenState createState() => _MarketsScreenState();
}

class _MarketsScreenState extends State<MarketsScreen> {
  AllMarketModel _allMarketModel=AllMarketModel();
  MarketController _marketController=MarketController();
  bool _loading=true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _getAllMarket() async{
    _allMarketModel=await _marketController.GetMarket(
      governorateID: widget.governorateID,
      cityID: widget.cityID,
      sectionID: widget.SectionID,
    );
    setState(() {
      _loading=false;
    });  }
  @override
  void initState() {
    _getAllMarket();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .accentColor,
      appBar: AppBar(
        title: Text(
          widget.SectionName, style: TextStyle(color: Colors.white, fontSize: 25,),),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            }),

      ),
    body: _loading ?
    Center(child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),)
        : _allMarketModel.data.isEmpty? Container(child: Center(child: Text("لم يتم اضافة قسم  "+  widget.SectionName),),)
        :  Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: ListView.builder(
                itemCount: _allMarketModel.data.length,
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemBuilder: (ctx, index) {
                  return MyMarketsItem(
                      model: _allMarketModel.data[index]
                  ) ;
                }),
          ),

    );
  }


}

