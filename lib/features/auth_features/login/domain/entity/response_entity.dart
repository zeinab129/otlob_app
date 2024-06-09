import 'package:equatable/equatable.dart';

class ResponseEntity extends Equatable{
  ResponseEntity({
    this.user,
    this.token,
  });

  ResponseEntity.fromJson(dynamic json) {
    user = json['user'] != null ? UserEntity.fromJson(json['user']) : null;
    token = json['token'];
  }

  UserEntity? user;
  String? token;

  @override
  // TODO: implement props
  List<Object?> get props => [user, token];
}

class UserEntity {
  UserEntity({this.name, this.email});

  UserEntity.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
  }

  String? name;
  String? email;
}
