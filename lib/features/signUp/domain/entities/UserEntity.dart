
class UserEntity  {
  UserEntity({
    this.user,
    this.token,
  });

  UserDataEntity? user;
  String? token;

  @override
  // TODO: implement props
  List<Object?> get props => [user, token];
}

class UserDataEntity  {
  UserDataEntity({
    this.name,
    this.email,
  });

  String? name;
  String? email;


}
