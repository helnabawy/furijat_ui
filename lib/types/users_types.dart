enum ClientType { guide, user, admin }

extension EUserType on ClientType {
  String get value {
    return this.toString().split('.').last;
  }
}
