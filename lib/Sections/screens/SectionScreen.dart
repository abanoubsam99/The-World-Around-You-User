import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Sections/Controller/SectionController.dart';
import 'package:the_world_around_you_user/Sections/Model/SectionModel.dart';
import 'package:the_world_around_you_user/Sections/widgets/SectionsItem.dart';


class SectionsScreen extends StatefulWidget {
 int governorateID,cityID,areaID;
 SectionsScreen({@required this.governorateID,@required this.cityID,@required this.areaID});

  @override
  _SectionsScreenState createState() => _SectionsScreenState();
}

class _SectionsScreenState extends State<SectionsScreen> {
  SectionController _sectionController= SectionController();
  SectionModel _sectionModel=SectionModel();
  bool _loading=true;

  _getSection () async{
    _sectionModel=await _sectionController.GetController();
    setState(() {
      _loading=false;
    });
  }

  @override
  void initState() {
    _getSection();
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
          "الاقسام", style: TextStyle(color: Colors.white, fontSize: 25,),),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            }),

      ),
      body: _loading ? Center(child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),)
      :Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 1,
    crossAxisSpacing: 30,
    mainAxisSpacing: 30),
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
    itemCount: _sectionModel.data.length,
    itemBuilder: (ctx, index) {
    return SectionsItem(
      sectionID: _sectionModel.data[index].iD,
      title: _sectionModel.data[index].name,
        image: _sectionModel.data[index].image,
      hveSubSection: _sectionModel.data[index].haveSubSection,
      governorateID: widget.governorateID,
      cityID: widget.cityID,
      areaID: widget.areaID,

    );
    }),

      )
    );
  }
}
