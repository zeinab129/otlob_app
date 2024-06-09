class ResetPasswordModel {
  ResetPasswordModel({
      this.statusMsg, 
      this.message, 
      this.token,});

  ResetPasswordModel.fromJson(dynamic json) {
    statusMsg = json['statusMsg'];
    message = json['message'];
    token = json['token'];
  }
  String? statusMsg;
  String? message;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusMsg'] = statusMsg;
    map['message'] = message;
    map['token'] = token;
    return map;
  }

}