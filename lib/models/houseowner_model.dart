class HouseOwnerModel {
  int? id;
  String? name;
  String? type;
  int? isAnyDebt;
  int? wardNo;
  String? address;
  int? houseNo;
  int? foodConditionId;
  int? totalFamilyCount;
  String? houseCode;
  int? maleFamilyCount;
  int? femaleFamilyCount;
  int? otherFamilyCount;
  int? togetherCount;
  int? togetherMaleCount;
  int? togetherFemaleCount;
  int? togetherOtherCount;
  int? residingCount;
  int? residingMaleCount;
  int? residingFemaleCount;
  int? residingOtherCount;
  int? residingAbroadCount;
  int? residingAbroadMaleCount;
  int? residingAbroadFemaleCount;
  int? residingAbroadOtherCount;
  int? castId;
  int? religionId;
  int? languageId;
  int? houseTypeId;
  int? houseOwnerTypeId;
  int? isHouseRanted;
  int? isLandRanted;
  int? occupationId;
  int? averageMonthlyIncomeId;
  int? averageMonthlySavingId;
  int? isUnEmployedMember;
  int? skillTypeId;
  int? isAnyBusiness;
  int? businessTypeId;
  int? isLandLalPurja;
  int? isLandOutOfPalika;
  int? landOwner;
  int? landAnna;
  int? landRopani;
  int? childrenSchoolType;
  int? isDisabilityFamily;
  int? isChronicDiseases;
  int? waterResourceId;
  int? isToilet;
  int? isElectricity;
  int? cookingFuelId;
  int? cookingStoveId;
  int? isVehicle;
  int? vehicleId;
  int? isNaturalDisasterArea;
  int? naturalDisasterId;
  int? wasteManagementId;
  int? earthquake2072Id;
  int? isEarthquakeAnudan;
  int? earthquakeKista;
  int? isAnyAnimal;
  int? toiletId;
  int? lightSourceId;
  bool? isMarried;
  int? houseFloorId;
  int? houseRoofId;
  int? houseMapId;
  int? houseOwnershipId;
  int? userId;
  String? createdDate;
  List<int?>? countryDataList;
  List<int?>? abhadhiDataList;

  HouseOwnerModel(
      {this.id,
      this.name,
      this.type,
      this.isAnyDebt,
      this.wardNo,
      this.address,
      this.houseNo,
      this.foodConditionId,
      this.totalFamilyCount,
      this.houseCode,
      this.maleFamilyCount,
      this.femaleFamilyCount,
      this.otherFamilyCount,
      this.togetherCount,
      this.togetherMaleCount,
      this.togetherFemaleCount,
      this.togetherOtherCount,
      this.residingCount,
      this.residingMaleCount,
      this.residingFemaleCount,
      this.residingOtherCount,
      this.residingAbroadCount,
      this.residingAbroadMaleCount,
      this.residingAbroadFemaleCount,
      this.residingAbroadOtherCount,
      this.castId,
      this.religionId,
      this.languageId,
      this.houseTypeId,
      this.houseOwnerTypeId,
      this.isHouseRanted,
      this.isLandRanted,
      this.occupationId,
      this.averageMonthlyIncomeId,
      this.averageMonthlySavingId,
      this.isUnEmployedMember,
      this.skillTypeId,
      this.isAnyBusiness,
      this.businessTypeId,
      this.isLandLalPurja,
      this.isLandOutOfPalika,
      this.landOwner,
      this.landAnna,
      this.landRopani,
      this.childrenSchoolType,
      this.isDisabilityFamily,
      this.isChronicDiseases,
      this.waterResourceId,
      this.isToilet,
      this.isElectricity,
      this.cookingFuelId,
      this.cookingStoveId,
      this.isVehicle,
      this.vehicleId,
      this.isNaturalDisasterArea,
      this.naturalDisasterId,
      this.wasteManagementId,
      this.earthquake2072Id,
      this.isEarthquakeAnudan,
      this.earthquakeKista,
      this.isAnyAnimal,
      this.toiletId,
      this.lightSourceId,
      this.isMarried,
      this.houseFloorId,
      this.houseRoofId,
      this.houseMapId,
      this.houseOwnershipId,
      this.userId,
      this.createdDate,
      this.countryDataList,
      this.abhadhiDataList});

  HouseOwnerModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    type = json['Type'];
    isAnyDebt = json['IsAnyDebt'];
    wardNo = json['WardNo'];
    address = json['Address'];
    houseNo = json['HouseNo'];
    foodConditionId = json['FoodConditionId'];
    totalFamilyCount = json['TotalFamilyCount'];
    houseCode = json['HouseCode'];
    maleFamilyCount = json['MaleFamilyCount'];
    femaleFamilyCount = json['FemaleFamilyCount'];
    otherFamilyCount = json['OtherFamilyCount'];
    togetherCount = json['TogetherCount'];
    togetherMaleCount = json['TogetherMaleCount'];
    togetherFemaleCount = json['TogetherFemaleCount'];
    togetherOtherCount = json['TogetherOtherCount'];
    residingCount = json['ResidingCount'];
    residingMaleCount = json['ResidingMaleCount'];
    residingFemaleCount = json['ResidingFemaleCount'];
    residingOtherCount = json['ResidingOtherCount'];
    residingAbroadCount = json['ResidingAbroadCount'];
    residingAbroadMaleCount = json['ResidingAbroadMaleCount'];
    residingAbroadFemaleCount = json['ResidingAbroadFemaleCount'];
    residingAbroadOtherCount = json['ResidingAbroadOtherCount'];
    castId = json['CastId'];
    religionId = json['ReligionId'];
    languageId = json['LanguageId'];
    houseTypeId = json['HouseTypeId'];
    houseOwnerTypeId = json['HouseOwnerTypeId'];
    isHouseRanted = json['IsHouseRanted'];
    isLandRanted = json['IsLandRanted'];
    occupationId = json['OccupationId'];
    averageMonthlyIncomeId = json['AverageMonthlyIncomeId'];
    averageMonthlySavingId = json['AverageMonthlySavingId'];
    isUnEmployedMember = json['IsUnEmployedMember'];
    skillTypeId = json['SkillTypeId'];
    isAnyBusiness = json['IsAnyBusiness'];
    businessTypeId = json['BusinessTypeId'];
    isLandLalPurja = json['IsLandLalPurja'];
    isLandOutOfPalika = json['IsLandOutOfPalika'];
    landOwner = json['LandOwner'];
    landAnna = json['LandAnna'];
    landRopani = json['LandRopani'];
    childrenSchoolType = json['ChildrenSchoolType'];
    isDisabilityFamily = json['IsDisabilityFamily'];
    isChronicDiseases = json['IsChronicDiseases'];
    waterResourceId = json['WaterResourceId'];
    isToilet = json['IsToilet'];
    isElectricity = json['IsElectricity'];
    cookingFuelId = json['CookingFuelId'];
    cookingStoveId = json['CookingStoveId'];
    isVehicle = json['IsVehicle'];
    vehicleId = json['VehicleId'];
    isNaturalDisasterArea = json['IsNaturalDisasterArea'];
    naturalDisasterId = json['NaturalDisasterId'];
    wasteManagementId = json['WasteManagementId'];
    earthquake2072Id = json['Earthquake2072Id'];
    isEarthquakeAnudan = json['IsEarthquakeAnudan'];
    earthquakeKista = json['EarthquakeKista'];
    isAnyAnimal = json['IsAnyAnimal'];
    toiletId = json['ToiletId'];
    lightSourceId = json['LightSourceId'];
    isMarried = json['IsMarried'];
    houseFloorId = json['HouseFloorId'];
    houseRoofId = json['HouseRoofId'];
    houseMapId = json['HouseMapId'];
    houseOwnershipId = json['HouseOwnershipId'];
    userId = json['UserId'];
    createdDate = json['CreatedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Type'] = type;
    data['IsAnyDebt'] = isAnyDebt;
    data['WardNo'] = wardNo;
    data['Address'] = address;
    data['HouseNo'] = houseNo;
    data['FoodConditionId'] = foodConditionId;
    data['TotalFamilyCount'] = totalFamilyCount;
    data['HouseCode'] = houseCode;
    data['MaleFamilyCount'] = maleFamilyCount;
    data['FemaleFamilyCount'] = femaleFamilyCount;
    data['OtherFamilyCount'] = otherFamilyCount;
    data['TogetherCount'] = togetherCount;
    data['TogetherMaleCount'] = togetherMaleCount;
    data['TogetherFemaleCount'] = togetherFemaleCount;
    data['TogetherOtherCount'] = togetherOtherCount;
    data['ResidingCount'] = residingCount;
    data['ResidingMaleCount'] = residingMaleCount;
    data['ResidingFemaleCount'] = residingFemaleCount;
    data['ResidingOtherCount'] = residingOtherCount;
    data['ResidingAbroadCount'] = residingAbroadCount;
    data['ResidingAbroadMaleCount'] = residingAbroadMaleCount;
    data['ResidingAbroadFemaleCount'] = residingAbroadFemaleCount;
    data['ResidingAbroadOtherCount'] = residingAbroadOtherCount;
    data['CastId'] = castId;
    data['ReligionId'] = religionId;
    data['LanguageId'] = languageId;
    data['HouseTypeId'] = houseTypeId;
    data['HouseOwnerTypeId'] = houseOwnerTypeId;
    data['IsHouseRanted'] = isHouseRanted;
    data['IsLandRanted'] = isLandRanted;
    data['OccupationId'] = occupationId;
    data['AverageMonthlyIncomeId'] = averageMonthlyIncomeId;
    data['AverageMonthlySavingId'] = averageMonthlySavingId;
    data['IsUnEmployedMember'] = isUnEmployedMember;
    data['SkillTypeId'] = skillTypeId;
    data['IsAnyBusiness'] = isAnyBusiness;
    data['BusinessTypeId'] = businessTypeId;
    data['IsLandLalPurja'] = isLandLalPurja;
    data['IsLandOutOfPalika'] = isLandOutOfPalika;
    data['LandOwner'] = landOwner;
    data['LandAnna'] = landAnna;
    data['LandRopani'] = landRopani;
    data['ChildrenSchoolType'] = childrenSchoolType;
    data['IsDisabilityFamily'] = isDisabilityFamily;
    data['IsChronicDiseases'] = isChronicDiseases;
    data['WaterResourceId'] = waterResourceId;
    data['IsToilet'] = isToilet;
    data['IsElectricity'] = isElectricity;
    data['CookingFuelId'] = cookingFuelId;
    data['CookingStoveId'] = cookingStoveId;
    data['IsVehicle'] = isVehicle;
    data['VehicleId'] = vehicleId;
    data['IsNaturalDisasterArea'] = isNaturalDisasterArea;
    data['NaturalDisasterId'] = naturalDisasterId;
    data['WasteManagementId'] = wasteManagementId;
    data['Earthquake2072Id'] = earthquake2072Id;
    data['IsEarthquakeAnudan'] = isEarthquakeAnudan;
    data['EarthquakeKista'] = earthquakeKista;
    data['IsAnyAnimal'] = isAnyAnimal;
    data['ToiletId'] = toiletId;
    data['LightSourceId'] = lightSourceId;
    data['IsMarried'] = isMarried;
    data['HouseFloorId'] = houseFloorId;
    data['HouseRoofId'] = houseRoofId;
    data['HouseMapId'] = houseMapId;
    data['HouseOwnershipId'] = houseOwnershipId;
    data['UserId'] = userId;
    data['CreatedDate'] = createdDate;

    return data;
  }
}
