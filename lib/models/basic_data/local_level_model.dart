class LocalLevelModel {
  int? id;
  String? name;
  String? type;
  int? distId;
  int? maxWardNo;
  int? localLevelDetailsId;
  String? area;
  String? density;
  String? population;
  String? districtName;
  String? website;
  String? code;

  LocalLevelModel(
      {this.id,
      this.name,
      this.type,
      this.distId,
      this.maxWardNo,
      this.localLevelDetailsId,
      this.area,
      this.density,
      this.population,
      this.districtName,
      this.website,
      this.code});

  LocalLevelModel.fromJson(Map<String, dynamic> json) {
    id = json["Id"];
    name = json["Name"];
    type = json["Type"];
    distId = json["DistId"];
    maxWardNo = json["MaxWardNo"];
    localLevelDetailsId = json["LocalLevelDetailsId"];
    area = json["Area"];
    density = json["Density"];
    population = json["Population"];
    districtName = json["DistrictName"];
    website = json["Website"];
    code = json["Code"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Id"] = id;
    data["Name"] = name;
    data["Type"] = type;
    data["DistId"] = distId;
    data["MaxWardNo"] = maxWardNo;
    data["LocalLevelDetailsId"] = localLevelDetailsId;
    data["Area"] = area;
    data["Density"] = density;
    data["Population"] = population;
    data["DistrictName"] = districtName;
    data["Website"] = website;
    data["Code"] = code;
    return data;
  }
}
