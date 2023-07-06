class DistrictModel {
  int? id;
  String? name;
  int? stateId;
  int? districtDetailsId;
  String? headQuater;
  String? pDensity;
  String? population;
  String? area;
  String? website;
  String? stateName;

  DistrictModel(
      {this.id,
      this.name,
      this.stateId,
      this.districtDetailsId,
      this.headQuater,
      this.pDensity,
      this.population,
      this.area,
      this.website,
      this.stateName});

  DistrictModel.fromJson(Map<String, dynamic> json) {
    id = json["Id"];
    name = json["Name"];
    stateId = json["StateId"];
    districtDetailsId = json["DistrictDetailsId"];
    headQuater = json["HeadQuater"];
    pDensity = json["PDensity"];
    population = json["Population"];
    area = json["Area"];
    website = json["Website"];
    stateName = json["StateName"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Id"] = id;
    data["Name"] = name;
    data["StateId"] = stateId;
    data["DistrictDetailsId"] = districtDetailsId;
    data["HeadQuater"] = headQuater;
    data["PDensity"] = pDensity;
    data["Population"] = population;
    data["Area"] = area;
    data["Website"] = website;
    data["StateName"] = stateName;
    return data;
  }
}
