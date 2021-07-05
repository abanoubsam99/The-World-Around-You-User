import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Cities/Controller/CitiesController.dart';
import 'package:the_world_around_you_user/Cities/Model/CitiesMolel.dart';
import 'package:the_world_around_you_user/Cities/Widgets/CitiesItem.dart';
import 'package:the_world_around_you_user/Streets/Screens/StreetsScreen.dart';

class CitiesScreen extends StatefulWidget {
  @override
  _CitiesScreenState createState() => _CitiesScreenState();
}

class _CitiesScreenState extends State<CitiesScreen> {
  CitiesController _citiesController= CitiesController();
  CitiesModel _citiesModel=CitiesModel();
  Stream<CitiesModel>_getCities () async*{
    _citiesModel=await _citiesController.GetCities(id: 2);
    yield _citiesModel;
  }
  @override
  void initState() {
    _getCities();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title:Text("العالم من حولك",style: TextStyle(color: Colors.white,fontSize: 25,),),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset("Assets/icon.png"),
        ),
        ),

      body: StreamBuilder <CitiesModel>(
        stream:  _getCities(),
        builder: (BuildContext context, AsyncSnapshot<CitiesModel> snapshot) {
          if(snapshot.data==null){
           return Center(child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),);
          }else
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: snapshot.data.data.length,
          itemBuilder: (context, index) {
            return  InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => StreetsScreen(
                  CityID: snapshot.data.data[index].iD,
                  CitName: snapshot.data.data[index].name,
                  governorateID: 2,

                )));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(snapshot.data.data[index].name,style: TextStyle(color: Colors.black,fontSize: 23),),
                    SizedBox(width: 10,),
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(fit: BoxFit.cover,
                          image: NetworkImage("https://img.freepik.com/free-photo/empty-asphalt-road-through-modern-city-china_1127-3840.jpg?size=338&ext=jpg"),
                        )
                      ),
                    ),
                    
                  ],),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(color: Colors.grey,);
          },
        ),
      );
        }
          ),
    );
  }

}

