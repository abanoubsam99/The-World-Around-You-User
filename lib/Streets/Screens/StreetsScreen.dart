import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Cities/Widgets/CitiesItem.dart';
import 'package:the_world_around_you_user/Sections/screens/SectionScreen.dart';
import 'package:the_world_around_you_user/Streets/Controller/AreaController.dart';
import 'package:the_world_around_you_user/Streets/Model/AreaModel.dart';
import 'package:the_world_around_you_user/Streets/Widgets/StreetsItem.dart';

class StreetsScreen extends StatefulWidget {
  String CitName;
  int CityID,governorateID;

  StreetsScreen({@required this.CityID,@required this.CitName,@required this.governorateID});
  @override
  _StreetsScreenState createState() => _StreetsScreenState();
}

class _StreetsScreenState extends State<StreetsScreen> {
  AreaController _areaController= AreaController();
  AreaModel _areaModel=AreaModel();
  String _area;

  Stream<AreaModel>_getArea () async*{
    _areaModel=await _areaController.GetArea(id: widget.CityID);
    yield _areaModel;
  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _getArea();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text(widget.CitName,style: TextStyle(color: Colors.white,fontSize: 25,),),
        centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_outlined,color: Colors.white,), onPressed: (){
          Navigator.pop(context);
        }),
       ),

      body:  StreamBuilder <AreaModel>(
    stream:  _getArea(),
    builder: (BuildContext context, AsyncSnapshot<AreaModel> snapshot) {
      if(snapshot.data==null){
        return Center(child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),);
      }else
        return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: snapshot.data.data.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SectionsScreen(
                  areaID: snapshot.data.data[index].iD,
                  governorateID:widget.governorateID ,
                  cityID: widget.CityID,

                )));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.2, .2), //(x,y)
                          blurRadius: 2.0,
                        ),
                      ]
                  ),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(snapshot.data.data[index].name,style: TextStyle(color: Colors.black,fontSize: 23),),
                      SizedBox(width: 10,),

                      Container(
                          width: 15,
                          height: MediaQuery.of(context).size.height,
                          color: ((){
                            if(index<100){
                              return  colors[index];
                            }
                            else{
                              index=index-100;
                              return  colors[index];
                            }
                          }())
                      )
                    ],),
                ),
              ),
            );
          },

        ),
      );
    }
      ),

    );
  }

}