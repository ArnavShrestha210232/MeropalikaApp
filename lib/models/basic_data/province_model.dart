class ProvinceModel {
  int? id;
  String? name;
  String? stateDetailsId;
  String? capital;
  String? chiefMinister;
  String? pDensity;
  String? governer;
  String? population;
  String? area;
  String? website;
  int? totalDist;

  ProvinceModel(
      {this.id,
      this.name,
      this.stateDetailsId,
      this.capital,
      this.chiefMinister,
      this.pDensity,
      this.governer,
      this.population,
      this.area,
      this.website,
      this.totalDist});

  ProvinceModel.fromJson(Map<String, dynamic> json) {
    id = json["Id"];
    name = json["Name"];
    stateDetailsId = json["StateDetailsId"];
    capital = json["Capital"];
    chiefMinister = json["ChiefMinister"];
    pDensity = json["PDensity"];
    governer = json["Governer"];
    population = json["Population"];
    area = json["Area"];
    website = json["Website"];
    totalDist = json["TotalDist"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Id"] = id;
    data["Name"] = name;
    data["StateDetailsId"] = stateDetailsId;
    data["Capital"] = capital;
    data["ChiefMinister"] = chiefMinister;
    data["PDensity"] = pDensity;
    data["Governer"] = governer;
    data["Population"] = population;
    data["Area"] = area;
    data["Website"] = website;
    data["TotalDist"] = totalDist;
    return data;
  }
}
