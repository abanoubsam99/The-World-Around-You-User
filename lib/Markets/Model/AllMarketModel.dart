class AllMarketModel {
  List<Data> data;
  List<Null> errors;
  bool result;

  AllMarketModel({this.data, this.errors, this.result});

  AllMarketModel.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != null) {
      data = new List<Data>();
      json['Data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    if (json['Errors'] != null) {
      errors = new List<Null>();
      json['Errors'].forEach((v) {
     //   errors.add(new Null.fromJson(v));
      });
    }
    result = json['Result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['Data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.errors != null) {
   //   data['Errors'] = this.errors.map((v) => v.toJson()).toList();
    }
    data['Result'] = this.result;
    return data;
  }
}

class Data {
  String address;
  String appoiment;
  String area;
  String city;
  String coverPhoto;
  String faceBookLink;
  String governorate;
  int iD;
  bool isSubsctibe;
  String logo;
  String mobile1;
  String mobile2;
  String ownerName;
  String subscribePlan;
  String title;
  String whatsappNum;

  Data(
      {this.address,
        this.appoiment,
        this.area,
        this.city,
        this.coverPhoto,
        this.faceBookLink,
        this.governorate,
        this.iD,
        this.isSubsctibe,
        this.logo,
        this.mobile1,
        this.mobile2,
        this.ownerName,
        this.subscribePlan,
        this.title,
        this.whatsappNum});

  Data.fromJson(Map<String, dynamic> json) {
    address = json['Address'];
    appoiment = json['Appoiment'];
    area = json['Area'];
    city = json['City'];
    coverPhoto = json['CoverPhoto'];
    faceBookLink = json['FaceBookLink'];
    governorate = json['Governorate'];
    iD = json['ID'];
    isSubsctibe = json['IsSubsctibe'];
    logo = json['Logo'];
    mobile1 = json['Mobile1'];
    mobile2 = json['Mobile2'];
    ownerName = json['OwnerName'];
    subscribePlan = json['SubscribePlan'];
    title = json['Title'];
    whatsappNum = json['WhatsappNum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Address'] = this.address;
    data['Appoiment'] = this.appoiment;
    data['Area'] = this.area;
    data['City'] = this.city;
    data['CoverPhoto'] = this.coverPhoto;
    data['FaceBookLink'] = this.faceBookLink;
    data['Governorate'] = this.governorate;
    data['ID'] = this.iD;
    data['IsSubsctibe'] = this.isSubsctibe;
    data['Logo'] = this.logo;
    data['Mobile1'] = this.mobile1;
    data['Mobile2'] = this.mobile2;
    data['OwnerName'] = this.ownerName;
    data['SubscribePlan'] = this.subscribePlan;
    data['Title'] = this.title;
    data['WhatsappNum'] = this.whatsappNum;
    return data;
  }
}