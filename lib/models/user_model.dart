class UserModel {
  int? id;
  String? firstName;
  String? middleName;
  String? lastName;
  String? phoneNo;
  String? email;
  int? stateId;
  int? districtId;
  int? localLevel;
  String? address;
  int? wardId;
  String? photo;
  String? stateName;
  String? districtName;
  String? localLevelName;
  String? password;
  String? confirmPassword;
  String? roleName;

  UserModel(
      {this.id,
      this.firstName,
      this.middleName,
      this.lastName,
      this.phoneNo,
      this.email,
      this.stateId,
      this.districtId,
      this.localLevel,
      this.address,
      this.wardId,
      this.photo,
      this.stateName,
      this.districtName,
      this.localLevelName,
      this.password,
      this.confirmPassword,
      this.roleName});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["Id"];
    firstName = json["FirstName"];
    middleName = json["MiddleName"];
    lastName = json["LastName"];
    phoneNo = json["PhoneNo"];
    email = json["Email"];
    stateId = json["StateId"];
    districtId = json["DistrictId"];
    localLevel = json["LocalLevel"];
    address = json["Address"];
    wardId = json["WardId"];
    photo = json["Photo"];
    stateName = json["StateName"];
    districtName = json["DistrictName"];
    localLevelName = json["LocalLevelName"];
    password = json["Password"];
    confirmPassword = json["ConfirmPassword"];
    roleName = json["RoleName"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Id"] = id;
    data["FirstName"] = firstName;
    data["MiddleName"] = middleName;
    data["LastName"] = lastName;
    data["PhoneNo"] = phoneNo;
    data["Email"] = email;
    data["StateId"] = stateId;
    data["DistrictId"] = districtId;
    data["LocalLevel"] = localLevel;
    data["Address"] = address;
    data["WardId"] = wardId;
    data["Photo"] = photo;
    data["StateName"] = stateName;
    data["DistrictName"] = districtName;
    data["LocalLevelName"] = localLevelName;
    data["Password"] = password;
    data["ConfirmPassword"] = confirmPassword;
    data["RoleName"] = roleName;
    return data;
  }
}
