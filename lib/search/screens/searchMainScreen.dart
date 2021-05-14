import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/search/widgets/dropDownList.dart';
import 'package:the_world_around_you_user/search/widgets/restaurantDetailsContainer.dart';
import 'package:the_world_around_you_user/search/widgets/searchBar.dart';

class SearchMainScreen extends StatefulWidget {
  @override
  _SearchMainScreenState createState() => _SearchMainScreenState();
}

class _SearchMainScreenState extends State<SearchMainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        title: Text(
          'الدقهليه',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomDropdownSearch(),
                    SearchBar(
                      hint: 'إكتب إسم الشارع',
                      icon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: null),
                      onclick: null,
                      secure: false,
                      textInputType: TextInputType.text,
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: restaurantDetailsContainerListViewData.length,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      itemBuilder: (ctx, index) {
                        return RestaurantDetailsContainer(
                          address:
                          restaurantDetailsContainerListViewData[index]
                                  ['address'],
                          image: restaurantDetailsContainerListViewData[index]
                              ['image'],
                          name: restaurantDetailsContainerListViewData[index]
                              ['name'],
                          phoneNumber:
                          restaurantDetailsContainerListViewData[index]
                                  ['phoneNumber'],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
