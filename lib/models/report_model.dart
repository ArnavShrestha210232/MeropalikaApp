class ReportModel {
  int? id;
  String? name;
  String? type;
  bool? isAnyDebt;
  int? wardNo;
  String? address;
  String? houseNo;
  int? foodConditionId;
  int? totalFamilyCount;
  int? province;
  String? district;
  String? cityCenter;
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
  bool? isHouseRanted;
  bool? isLandRanted;
  int? occupationId;
  int? averageMonthlyIncomeId;
  int? averageMonthlySavingId;
  bool? isUnEmployedMember;
  int? skillTypeId;
  bool? isAnyBusiness;
  int? businessTypeId;
  bool? isLandLalPurja;
  bool? isLandOutOfPalika;
  String? landOwner;
  String? landAnna;
  String? landRopani;
  String? childrenSchoolType;
  bool? isDisabilityFamily;
  bool? isChronicDiseases;
  int? waterResourceId;
  bool? isToilet;
  bool? isElectricity;
  int? cookingFuelId;
  int? cookingStoveId;
  bool? isVehicle;
  int? vehicleId;
  bool? isNaturalDisasterArea;
  int? naturalDisasterId;
  int? wasteManagementId;
  int? earthquake2072Id;
  bool? isEarthquakeAnudan;
  String? earthquakeKista;
  bool? isAnyAnimal;
  int? toiletId;
  int? lightSourceId;
  bool? isMarried;
  int? houseFloorId;
  int? houseRoofId;
  int? houseMapId;
  int? houseOwnershipId;
  int? disabilityReasonId;
  int? houseOwnerDetailId;
  int? school;
  int? healthPost;
  int? bank;
  int? governmentOffice;
  int? industry;
  int? securityAgencies;
  int? naturalResource;
  int? culturalHeritage;
  int? townWardOffice;
  List<AgeGroupDatas>? ageGroupDatas;
  List<AbhadhiDatas>? abhadhiDatas;
  List<CountryDatas>? countryDatas;
  List<EconomicDatas>? economicDatas;
  List<AnimalDataList>? animalDataList;
  List<EducationGroupDataList>? educationGroupDataList;
  List<SchoolGroupDataList>? schoolGroupDataList;
  List<DisabilityCardDataList>? disabilityCardDataList;
  List<DisabilityTypeDataList>? disabilityTypeDataList;
  List<ChronicDiseasesDataList>? chronicDiseasesDataList;
  List<DisabilityReasonDataList>? disabilityReasonDataList;
  List<WaterDetailsDataList>? waterDetailsDataList;
  List<HouseDetailsDataList>? houseDetailsDataList;
  List<CasteGroupDataList>? casteGroupDataList;
  List<OccupationGroupDataList>? occupationGroupDataList;
  List<PersonalEventDataList>? personalEventDataList;
  List<SocialProgramDataList>? socialProgramDataList;
  List<EducationalLevelDataList>? educationalLevelDataList;
  List<SchoolDataList>? schoolDataList;
  List<TechnicalSkillsDataList>? technicalSkillsDataList;

  ReportModel(
      {this.id,
      this.name,
      this.type,
      this.isAnyDebt,
      this.wardNo,
      this.address,
      this.houseNo,
      this.foodConditionId,
      this.totalFamilyCount,
      this.province,
      this.district,
      this.cityCenter,
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
      this.disabilityReasonId,
      this.houseOwnerDetailId,
      this.school,
      this.healthPost,
      this.bank,
      this.governmentOffice,
      this.industry,
      this.securityAgencies,
      this.naturalResource,
      this.culturalHeritage,
      this.townWardOffice,
      this.ageGroupDatas,
      this.abhadhiDatas,
      this.countryDatas,
      this.economicDatas,
      this.animalDataList,
      this.educationGroupDataList,
      this.schoolGroupDataList,
      this.disabilityCardDataList,
      this.disabilityTypeDataList,
      this.chronicDiseasesDataList,
      this.disabilityReasonDataList,
      this.waterDetailsDataList,
      this.houseDetailsDataList,
      this.casteGroupDataList,
      this.occupationGroupDataList,
      this.personalEventDataList,
      this.socialProgramDataList,
      this.educationalLevelDataList,
      this.schoolDataList,
      this.technicalSkillsDataList});

  ReportModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    type = json['Type'];
    isAnyDebt = json['IsAnyDebt'];
    wardNo = json['WardNo'];
    address = json['Address'];
    houseNo = json['HouseNo'];
    foodConditionId = json['FoodConditionId'];
    totalFamilyCount = json['TotalFamilyCount'];
    province = json['Province'];
    district = json['District'];
    cityCenter = json['CityCenter'];
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
    disabilityReasonId = json['DisabilityReasonId'];
    houseOwnerDetailId = json['HouseOwnerDetailId'];
    school = json['School'];
    healthPost = json['HealthPost'];
    bank = json['Bank'];
    governmentOffice = json['GovernmentOffice'];
    industry = json['Industry'];
    securityAgencies = json['SecurityAgencies'];
    naturalResource = json['NaturalResource'];
    culturalHeritage = json['CulturalHeritage'];
    townWardOffice = json['TownWardOffice'];
    if (json['AgeGroupDatas'] != null) {
      ageGroupDatas = <AgeGroupDatas>[];
      json['AgeGroupDatas'].forEach((v) {
        ageGroupDatas!.add(AgeGroupDatas.fromJson(v));
      });
    }
    if (json['AbhadhiDatas'] != null) {
      abhadhiDatas = <AbhadhiDatas>[];
      json['AbhadhiDatas'].forEach((v) {
        abhadhiDatas!.add(AbhadhiDatas.fromJson(v));
      });
    }
    if (json['CountryDatas'] != null) {
      countryDatas = <CountryDatas>[];
      json['CountryDatas'].forEach((v) {
        countryDatas!.add(CountryDatas.fromJson(v));
      });
    }
    if (json['EconomicDatas'] != null) {
      economicDatas = <EconomicDatas>[];
      json['EconomicDatas'].forEach((v) {
        economicDatas!.add(EconomicDatas.fromJson(v));
      });
    }
    if (json['AnimalDataList'] != null) {
      animalDataList = <AnimalDataList>[];
      json['AnimalDataList'].forEach((v) {
        animalDataList!.add(AnimalDataList.fromJson(v));
      });
    }
    if (json['EducationGroupDataList'] != null) {
      educationGroupDataList = <EducationGroupDataList>[];
      json['EducationGroupDataList'].forEach((v) {
        educationGroupDataList!.add(EducationGroupDataList.fromJson(v));
      });
    }
    if (json['SchoolGroupDataList'] != null) {
      schoolGroupDataList = <SchoolGroupDataList>[];
      json['SchoolGroupDataList'].forEach((v) {
        schoolGroupDataList!.add(SchoolGroupDataList.fromJson(v));
      });
    }
    if (json['DisabilityCardDataList'] != null) {
      disabilityCardDataList = <DisabilityCardDataList>[];
      json['DisabilityCardDataList'].forEach((v) {
        disabilityCardDataList!.add(DisabilityCardDataList.fromJson(v));
      });
    }
    if (json['DisabilityTypeDataList'] != null) {
      disabilityTypeDataList = <DisabilityTypeDataList>[];
      json['DisabilityTypeDataList'].forEach((v) {
        disabilityTypeDataList!.add(DisabilityTypeDataList.fromJson(v));
      });
    }
    if (json['ChronicDiseasesDataList'] != null) {
      chronicDiseasesDataList = <ChronicDiseasesDataList>[];
      json['ChronicDiseasesDataList'].forEach((v) {
        chronicDiseasesDataList!.add(ChronicDiseasesDataList.fromJson(v));
      });
    }
    if (json['DisabilityReasonDataList'] != null) {
      disabilityReasonDataList = <DisabilityReasonDataList>[];
      json['DisabilityReasonDataList'].forEach((v) {
        disabilityReasonDataList!.add(DisabilityReasonDataList.fromJson(v));
      });
    }
    if (json['WaterDetailsDataList'] != null) {
      waterDetailsDataList = <WaterDetailsDataList>[];
      json['WaterDetailsDataList'].forEach((v) {
        waterDetailsDataList!.add(WaterDetailsDataList.fromJson(v));
      });
    }
    if (json['HouseDetailsDataList'] != null) {
      houseDetailsDataList = <HouseDetailsDataList>[];
      json['HouseDetailsDataList'].forEach((v) {
        houseDetailsDataList!.add(HouseDetailsDataList.fromJson(v));
      });
    }
    if (json['CasteGroupDataList'] != null) {
      casteGroupDataList = <CasteGroupDataList>[];
      json['CasteGroupDataList'].forEach((v) {
        casteGroupDataList!.add(CasteGroupDataList.fromJson(v));
      });
    }
    if (json['OccupationGroupDataList'] != null) {
      occupationGroupDataList = <OccupationGroupDataList>[];
      json['OccupationGroupDataList'].forEach((v) {
        occupationGroupDataList!.add(OccupationGroupDataList.fromJson(v));
      });
    }
    if (json['PersonalEventDataList'] != null) {
      personalEventDataList = <PersonalEventDataList>[];
      json['PersonalEventDataList'].forEach((v) {
        personalEventDataList!.add(PersonalEventDataList.fromJson(v));
      });
    }
    if (json['SocialProgramDataList'] != null) {
      socialProgramDataList = <SocialProgramDataList>[];
      json['SocialProgramDataList'].forEach((v) {
        socialProgramDataList!.add(SocialProgramDataList.fromJson(v));
      });
    }
    if (json['EducationalLevelDataList'] != null) {
      educationalLevelDataList = <EducationalLevelDataList>[];
      json['EducationalLevelDataList'].forEach((v) {
        educationalLevelDataList!.add(EducationalLevelDataList.fromJson(v));
      });
    }
    if (json['SchoolDataList'] != null) {
      schoolDataList = <SchoolDataList>[];
      json['SchoolDataList'].forEach((v) {
        schoolDataList!.add(SchoolDataList.fromJson(v));
      });
    }
    if (json['TechnicalSkillsDataList'] != null) {
      technicalSkillsDataList = <TechnicalSkillsDataList>[];
      json['TechnicalSkillsDataList'].forEach((v) {
        technicalSkillsDataList!.add(TechnicalSkillsDataList.fromJson(v));
      });
    }
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
    data['Province'] = province;
    data['District'] = district;
    data['CityCenter'] = cityCenter;
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
    data['DisabilityReasonId'] = disabilityReasonId;
    data['HouseOwnerDetailId'] = houseOwnerDetailId;
    data['School'] = school;
    data['HealthPost'] = healthPost;
    data['Bank'] = bank;
    data['GovernmentOffice'] = governmentOffice;
    data['Industry'] = industry;
    data['SecurityAgencies'] = securityAgencies;
    data['NaturalResource'] = naturalResource;
    data['CulturalHeritage'] = culturalHeritage;
    data['TownWardOffice'] = townWardOffice;
    if (ageGroupDatas != null) {
      data['AgeGroupDatas'] = ageGroupDatas!.map((v) => v.toJson()).toList();
    }
    if (abhadhiDatas != null) {
      data['AbhadhiDatas'] = abhadhiDatas!.map((v) => v.toJson()).toList();
    }
    if (countryDatas != null) {
      data['CountryDatas'] = countryDatas!.map((v) => v.toJson()).toList();
    }
    if (economicDatas != null) {
      data['EconomicDatas'] = economicDatas!.map((v) => v.toJson()).toList();
    }
    if (animalDataList != null) {
      data['AnimalDataList'] = animalDataList!.map((v) => v.toJson()).toList();
    }
    if (educationGroupDataList != null) {
      data['EducationGroupDataList'] =
          educationGroupDataList!.map((v) => v.toJson()).toList();
    }
    if (schoolGroupDataList != null) {
      data['SchoolGroupDataList'] =
          schoolGroupDataList!.map((v) => v.toJson()).toList();
    }
    if (disabilityCardDataList != null) {
      data['DisabilityCardDataList'] =
          disabilityCardDataList!.map((v) => v.toJson()).toList();
    }
    if (disabilityTypeDataList != null) {
      data['DisabilityTypeDataList'] =
          disabilityTypeDataList!.map((v) => v.toJson()).toList();
    }
    if (chronicDiseasesDataList != null) {
      data['ChronicDiseasesDataList'] =
          chronicDiseasesDataList!.map((v) => v.toJson()).toList();
    }
    if (disabilityReasonDataList != null) {
      data['DisabilityReasonDataList'] =
          disabilityReasonDataList!.map((v) => v.toJson()).toList();
    }
    if (waterDetailsDataList != null) {
      data['WaterDetailsDataList'] =
          waterDetailsDataList!.map((v) => v.toJson()).toList();
    }
    if (houseDetailsDataList != null) {
      data['HouseDetailsDataList'] =
          houseDetailsDataList!.map((v) => v.toJson()).toList();
    }
    if (casteGroupDataList != null) {
      data['CasteGroupDataList'] =
          casteGroupDataList!.map((v) => v.toJson()).toList();
    }
    if (occupationGroupDataList != null) {
      data['OccupationGroupDataList'] =
          occupationGroupDataList!.map((v) => v.toJson()).toList();
    }
    if (personalEventDataList != null) {
      data['PersonalEventDataList'] =
          personalEventDataList!.map((v) => v.toJson()).toList();
    }
    if (socialProgramDataList != null) {
      data['SocialProgramDataList'] =
          socialProgramDataList!.map((v) => v.toJson()).toList();
    }
    if (educationalLevelDataList != null) {
      data['EducationalLevelDataList'] =
          educationalLevelDataList!.map((v) => v.toJson()).toList();
    }
    if (schoolDataList != null) {
      data['SchoolDataList'] = schoolDataList!.map((v) => v.toJson()).toList();
    }
    if (technicalSkillsDataList != null) {
      data['TechnicalSkillsDataList'] =
          technicalSkillsDataList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AgeGroupDatas {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;
  int? total;

  AgeGroupDatas(
      {this.id, this.name, this.male, this.female, this.other, this.total});

  AgeGroupDatas.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
    total = json['Total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    data['Total'] = total;
    return data;
  }
}

class AbhadhiDatas {
  int? id;
  String? name;
  int? count;

  AbhadhiDatas({this.id, this.name, this.count});

  AbhadhiDatas.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    count = json['Count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Count'] = count;
    return data;
  }
}

class EconomicDatas {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;

  EconomicDatas({this.id, this.name, this.male, this.female, this.other});

  EconomicDatas.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    return data;
  }
}

class AnimalDataList {
  int? id;
  String? name;
  int? agriculutreDetailId;
  int? total;

  AnimalDataList({this.id, this.name, this.agriculutreDetailId, this.total});

  AnimalDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    agriculutreDetailId = json['AgriculutreDetailId'];
    total = json['Total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['AgriculutreDetailId'] = agriculutreDetailId;
    data['Total'] = total;
    return data;
  }
}

class SchoolGroupDataList {
  int? id;
  String? name;
  int? schoolLayerID;
  int? schoolTimeID;

  SchoolGroupDataList(
      {this.id, this.name, this.schoolLayerID, this.schoolTimeID});

  SchoolGroupDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    schoolLayerID = json['SchoolLayerID'];
    schoolTimeID = json['SchoolTimeID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['SchoolLayerID'] = schoolLayerID;
    data['SchoolTimeID'] = schoolTimeID;
    return data;
  }
}

class WaterDetailsDataList {
  int? waterResourceId;
  int? cookingFuelId;
  int? cookingStoveId;
  int? wasteManagementId;
  int? id;
  int? wardNo;
  int? toiletId;
  int? lightSourceId;
  int? houseOwnerDetailId;

  WaterDetailsDataList(
      {this.waterResourceId,
      this.cookingFuelId,
      this.cookingStoveId,
      this.wasteManagementId,
      this.id,
      this.wardNo,
      this.toiletId,
      this.lightSourceId,
      this.houseOwnerDetailId});

  WaterDetailsDataList.fromJson(Map<String, dynamic> json) {
    waterResourceId = json['WaterResourceId'];
    cookingFuelId = json['CookingFuelId'];
    cookingStoveId = json['CookingStoveId'];
    wasteManagementId = json['WasteManagementId'];
    id = json['Id'];
    wardNo = json['WardNo'];
    toiletId = json['ToiletId'];
    lightSourceId = json['LightSourceId'];
    houseOwnerDetailId = json['HouseOwnerDetailId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['WaterResourceId'] = waterResourceId;
    data['CookingFuelId'] = cookingFuelId;
    data['CookingStoveId'] = cookingStoveId;
    data['WasteManagementId'] = wasteManagementId;
    data['Id'] = id;
    data['WardNo'] = wardNo;
    data['ToiletId'] = toiletId;
    data['LightSourceId'] = lightSourceId;
    data['HouseOwnerDetailId'] = houseOwnerDetailId;
    return data;
  }
}

class HouseDetailsDataList {
  int? id;
  int? wardNo;
  int? houseFloorId;
  int? houseRoofId;
  int? houseMapId;
  int? houseOwnershipId;
  int? houseOwnerDetailId;

  HouseDetailsDataList(
      {this.id,
      this.wardNo,
      this.houseFloorId,
      this.houseRoofId,
      this.houseMapId,
      this.houseOwnershipId,
      this.houseOwnerDetailId});

  HouseDetailsDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    wardNo = json['WardNo'];
    houseFloorId = json['HouseFloorId'];
    houseRoofId = json['HouseRoofId'];
    houseMapId = json['HouseMapId'];
    houseOwnershipId = json['HouseOwnershipId'];
    houseOwnerDetailId = json['HouseOwnerDetailId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['WardNo'] = wardNo;
    data['HouseFloorId'] = houseFloorId;
    data['HouseRoofId'] = houseRoofId;
    data['HouseMapId'] = houseMapId;
    data['HouseOwnershipId'] = houseOwnershipId;
    data['HouseOwnerDetailId'] = houseOwnerDetailId;
    return data;
  }
}

class PersonalEventDataList {
  int? id;
  String? name;
  List<int>? total;

  PersonalEventDataList({this.id, this.name, this.total});

  PersonalEventDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    total = json['Total'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Total'] = total;
    return data;
  }
}

class CountryDatas {
  int? id;
  String? name;
  int? count;

  CountryDatas({this.id, this.name, this.count});

  CountryDatas.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    count = json['Count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Count'] = count;
    return data;
  }
}

class EducationGroupDataList {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;

  EducationGroupDataList(
      {this.id, this.name, this.male, this.female, this.other});

  EducationGroupDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    return data;
  }
}

class DisabilityCardDataList {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;

  DisabilityCardDataList(
      {this.id, this.name, this.male, this.female, this.other});

  DisabilityCardDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    return data;
  }
}

class DisabilityTypeDataList {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;

  DisabilityTypeDataList(
      {this.id, this.name, this.male, this.female, this.other});

  DisabilityTypeDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    return data;
  }
}

class ChronicDiseasesDataList {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;

  ChronicDiseasesDataList(
      {this.id, this.name, this.male, this.female, this.other});

  ChronicDiseasesDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    return data;
  }
}

class DisabilityReasonDataList {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;

  DisabilityReasonDataList(
      {this.id, this.name, this.male, this.female, this.other});

  DisabilityReasonDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    return data;
  }
}

class CasteGroupDataList {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;
  int? total;

  CasteGroupDataList(
      {this.id, this.name, this.male, this.female, this.other, this.total});

  CasteGroupDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
    total = json['Total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    data['Total'] = total;
    return data;
  }
}

class SchoolDataList {
  int? id;
  String? name;
  int? schoolLayerID;
  int? schoolTimeID;

  SchoolDataList({this.id, this.name, this.schoolLayerID, this.schoolTimeID});

  SchoolDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    schoolLayerID = json['SchoolLayerID'];
    schoolTimeID = json['SchoolTimeID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['SchoolLayerID'] = schoolLayerID;
    data['SchoolTimeID'] = schoolTimeID;
    return data;
  }
}

class TechnicalSkillsDataList {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;

  TechnicalSkillsDataList(
      {this.id, this.name, this.male, this.female, this.other});

  TechnicalSkillsDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    return data;
  }
}

class OccupationGroupDataList {
  int? id;
  String? name;
  int? male;
  int? female;
  int? other;
  int? total;

  OccupationGroupDataList(
      {this.id, this.name, this.male, this.female, this.other, this.total});

  OccupationGroupDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    male = json['Male'];
    female = json['Female'];
    other = json['Other'];
    total = json['Total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Male'] = male;
    data['Female'] = female;
    data['Other'] = other;
    data['Total'] = total;
    return data;
  }
}

class SocialProgramDataList {
  int? id;
  String? name;
  List<int>? total;

  SocialProgramDataList({this.id, this.name, this.total});

  SocialProgramDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    total = json['Total'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Total'] = total;
    return data;
  }
}

class EducationalLevelDataList {
  int? id;
  String? name;
  List<int>? total;

  EducationalLevelDataList({this.id, this.name, this.total});

  EducationalLevelDataList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    total = json['Total'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Total'] = total;
    return data;
  }
}
