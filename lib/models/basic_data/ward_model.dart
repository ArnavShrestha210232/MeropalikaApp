class WardModel {
  int? id;
  int? wardNo;
  int? localLevelId;
  int? wardDetailsId;
  String? area;
  String? density;
  String? localLevelName;
  String? popullation;
  List<WardEmployiesList>? wardEmployiesList;
  List<WadrJanpratinadhiList>? wadrJanpratinadhiList;

  WardModel(
      {this.id,
      this.wardNo,
      this.localLevelId,
      this.wardDetailsId,
      this.area,
      this.density,
      this.localLevelName,
      this.popullation,
      this.wardEmployiesList,
      this.wadrJanpratinadhiList});

  WardModel.fromJson(Map<String, dynamic> json) {
    id = json["Id"];
    wardNo = json["WardNo"];
    localLevelId = json["LocalLevelId"];
    wardDetailsId = json["wardDetailsId"];
    area = json["Area"];
    density = json["Density"];
    localLevelName = json["LocalLevelName"];
    popullation = json["Popullation"];
    if (json["WardEmployiesList"] != null) {
      wardEmployiesList = <WardEmployiesList>[];
      json["WardEmployiesList"].forEach((v) {
        wardEmployiesList!.add(WardEmployiesList.fromJson(v));
      });
    }
    if (json["WadrJanpratinadhiList"] != null) {
      wadrJanpratinadhiList = <WadrJanpratinadhiList>[];
      json["WadrJanpratinadhiList"].forEach((v) {
        wadrJanpratinadhiList!.add(WadrJanpratinadhiList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Id"] = id;
    data["WardNo"] = wardNo;
    data["LocalLevelId"] = localLevelId;
    data["wardDetailsId"] = wardDetailsId;
    data["Area"] = area;
    data["Density"] = density;
    data["LocalLevelName"] = localLevelName;
    data["Popullation"] = popullation;
    if (wardEmployiesList != null) {
      data["WardEmployiesList"] =
          wardEmployiesList!.map((v) => v.toJson()).toList();
    }
    if (wadrJanpratinadhiList != null) {
      data["WadrJanpratinadhiList"] =
          wadrJanpratinadhiList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WardEmployiesList {
  int? id;
  String? name;
  int? departmentId;
  int? designationId;
  String? phone;
  String? address;
  int? localLevelId;
  int? wardId;
  String? photo;
  String? departmentName;
  String? designationName;

  WardEmployiesList(
      {this.id,
      this.name,
      this.departmentId,
      this.designationId,
      this.phone,
      this.address,
      this.localLevelId,
      this.wardId,
      this.photo,
      this.departmentName,
      this.designationName});

  WardEmployiesList.fromJson(Map<String, dynamic> json) {
    id = json["Id"];
    name = json["Name"];
    departmentId = json["DepartmentId"];
    designationId = json["DesignationId"];
    phone = json["Phone"];
    address = json["Address"];
    localLevelId = json["LocalLevelId"];
    wardId = json["WardId"];
    photo = json["Photo"];
    departmentName = json["DepartmentName"];
    designationName = json["DesignationName"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Id"] = id;
    data["Name"] = name;
    data["DepartmentId"] = departmentId;
    data["DesignationId"] = designationId;
    data["Phone"] = phone;
    data["Address"] = address;
    data["LocalLevelId"] = localLevelId;
    data["WardId"] = wardId;
    data["Photo"] = photo;
    data["DepartmentName"] = departmentName;
    data["DesignationName"] = designationName;
    return data;
  }
}

class WadrJanpratinadhiList {
  int? id;
  String? name;
  String? desiganation;
  String? phoneNo;
  String? photo;
  int? localLevelId;
  int? wardId;
  bool? isActive;

  WadrJanpratinadhiList(
      {this.id,
      this.name,
      this.desiganation,
      this.phoneNo,
      this.photo,
      this.localLevelId,
      this.wardId,
      this.isActive});

  WadrJanpratinadhiList.fromJson(Map<String, dynamic> json) {
    id = json["Id"];
    name = json["Name"];
    desiganation = json["Desiganation"];
    phoneNo = json["PhoneNo"];
    photo = json["Photo"];
    localLevelId = json["LocalLevelId"];
    wardId = json["WardId"];
    isActive = json["IsActive"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Id"] = id;
    data["Name"] = name;
    data["Desiganation"] = desiganation;
    data["PhoneNo"] = phoneNo;
    data["Photo"] = photo;
    data["LocalLevelId"] = localLevelId;
    data["WardId"] = wardId;
    data["IsActive"] = isActive;
    return data;
  }
}
