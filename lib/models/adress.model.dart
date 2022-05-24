import 'package:project_getex/models/geo.model.dart';

class AddressModel {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  AddressModel({this.street, this.suite, this.city, this.zipcode, this.geo});

  AddressModel.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
    geo = json['geo'] != null ? Geo.fromJson(json['geo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['street'] = street;
    data['suite'] = suite;
    data['city'] = city;
    data['zipcode'] = zipcode;
    if (geo != null) {
      data['geo'] = geo!.toJson();
    }
    return data;
  }
}