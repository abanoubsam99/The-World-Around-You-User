class ProductsModel {
  List<Data> data;
  List<Null> errors;
  bool result;

  ProductsModel({this.data, this.errors, this.result});

  ProductsModel.fromJson(Map<String, dynamic> json) {
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
     // data['Errors'] = this.errors.map((v) => v.toJson()).toList();
    }
    data['Result'] = this.result;
    return data;
  }
}

class Data {
  String descreption;
  int iD;
  String name;
  String photo;
  String photoNameWithExtension;
  double price;
  int sectionUserSubscribeID;

  Data(
      {this.descreption,
        this.iD,
        this.name,
        this.photo,
        this.photoNameWithExtension,
        this.price,
        this.sectionUserSubscribeID});

  Data.fromJson(Map<String, dynamic> json) {
    descreption = json['Descreption'];
    iD = json['ID'];
    name = json['Name'];
    photo = json['Photo'];
    photoNameWithExtension = json['PhotoNameWithExtension'];
    price = json['Price'];
    sectionUserSubscribeID = json['SectionUserSubscribeID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Descreption'] = this.descreption;
    data['ID'] = this.iD;
    data['Name'] = this.name;
    data['Photo'] = this.photo;
    data['PhotoNameWithExtension'] = this.photoNameWithExtension;
    data['Price'] = this.price;
    data['SectionUserSubscribeID'] = this.sectionUserSubscribeID;
    return data;
  }
}