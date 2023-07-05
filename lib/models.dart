class RegisterModel {
dynamic email;
  dynamic username;
  int? id;

  RegisterModel({this.email, this.username, this.id});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
    id = json['id'];
  }


}
class loginAuthModel {
  String? authToken;

  loginAuthModel({this.authToken});

  loginAuthModel.fromJson(Map<String, dynamic> json) {
    authToken = json['auth_token'];
  }

  
}