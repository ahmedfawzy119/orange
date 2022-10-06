class registerRespone {
  String? code;
  String? message;
  Data? data;

  registerRespone({this.code, this.message, this.data});

  registerRespone.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? email;
  String? password;
  String? name;
  String? phoneNumber;
  String? gender;
  int? roleId;

  Data(
      {this.email,
      this.password,
      this.name,
      this.phoneNumber,
      this.gender,
      this.roleId});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    gender = json['gender'];
    roleId = json['roleId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['name'] = this.name;
    data['phoneNumber'] = this.phoneNumber;
    data['gender'] = this.gender;
    data['roleId'] = this.roleId;
    return data;
  }
}
