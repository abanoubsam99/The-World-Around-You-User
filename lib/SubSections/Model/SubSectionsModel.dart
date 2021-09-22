class SubSectionsModel {
  List<Data> data;
  List<Null> errors;
  bool result;

  SubSectionsModel({this.data, this.errors, this.result});

  SubSectionsModel.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != null) {
      data = new List<Data>();
      json['Data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    if (json['Errors'] != null) {
      errors = new List<Null>();
      json['Errors'].forEach((v) {
        //  errors.add(new Null.fromJson(v));
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
  bool active;
  bool haveSubSection;
  int iD;
  String image;
  String name;

  Data({this.active, this.haveSubSection, this.iD, this.image, this.name});

  Data.fromJson(Map<String, dynamic> json) {
    active = json['Active'];
    haveSubSection = json['HaveSubSection'];
    iD = json['ID'];
    image = json['Image'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Active'] = this.active;
    data['HaveSubSection'] = this.haveSubSection;
    data['ID'] = this.iD;
    data['Image'] = this.image;
    data['Name'] = this.name;
    return data;
  }
}