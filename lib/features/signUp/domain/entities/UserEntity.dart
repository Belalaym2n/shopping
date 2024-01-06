class UserEntity {
  UserEntity({
    this.user,
    this.token,
  });

  UserEntityData? user;
  String? token;
}

class UserEntityData {
  UserEntityData({
    this.name,
    this.email,
  });


  String? name;
  String? email;

}
