// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegisterationFormDataStruct extends BaseStruct {
  RegisterationFormDataStruct({
    String? firstNameAR,
    String? fatherNameAR,
    String? grandFatherNameAR,
    String? familyNameAR,
    String? firstNameEN,
    String? fatherNameEN,
    String? grandFatherNameEN,
    String? familyNameEN,
    String? motherNameEN,
    DateTime? dateOfBirth,
    String? birthOfPlace,
    String? gender,
    String? nationality,
    bool? residentOfTheCountry,
    bool? haveAnAmericanPassport,
    String? profession,
    String? placeOfWork,
    String? monthlyInComeDollar,
    String? city,
    String? population,
    String? addressText,
    bool? areYouTheRealBeneficiaryOfAccount,
    String? nameOfTheBeneficialOwner,
  })  : _firstNameAR = firstNameAR,
        _fatherNameAR = fatherNameAR,
        _grandFatherNameAR = grandFatherNameAR,
        _familyNameAR = familyNameAR,
        _firstNameEN = firstNameEN,
        _fatherNameEN = fatherNameEN,
        _grandFatherNameEN = grandFatherNameEN,
        _familyNameEN = familyNameEN,
        _motherNameEN = motherNameEN,
        _dateOfBirth = dateOfBirth,
        _birthOfPlace = birthOfPlace,
        _gender = gender,
        _nationality = nationality,
        _residentOfTheCountry = residentOfTheCountry,
        _haveAnAmericanPassport = haveAnAmericanPassport,
        _profession = profession,
        _placeOfWork = placeOfWork,
        _monthlyInComeDollar = monthlyInComeDollar,
        _city = city,
        _population = population,
        _addressText = addressText,
        _areYouTheRealBeneficiaryOfAccount = areYouTheRealBeneficiaryOfAccount,
        _nameOfTheBeneficialOwner = nameOfTheBeneficialOwner;

  // "FirstNameAR" field.
  String? _firstNameAR;
  String get firstNameAR => _firstNameAR ?? '';
  set firstNameAR(String? val) => _firstNameAR = val;

  bool hasFirstNameAR() => _firstNameAR != null;

  // "FatherNameAR" field.
  String? _fatherNameAR;
  String get fatherNameAR => _fatherNameAR ?? '';
  set fatherNameAR(String? val) => _fatherNameAR = val;

  bool hasFatherNameAR() => _fatherNameAR != null;

  // "GrandFatherNameAR" field.
  String? _grandFatherNameAR;
  String get grandFatherNameAR => _grandFatherNameAR ?? '';
  set grandFatherNameAR(String? val) => _grandFatherNameAR = val;

  bool hasGrandFatherNameAR() => _grandFatherNameAR != null;

  // "FamilyNameAR" field.
  String? _familyNameAR;
  String get familyNameAR => _familyNameAR ?? '';
  set familyNameAR(String? val) => _familyNameAR = val;

  bool hasFamilyNameAR() => _familyNameAR != null;

  // "FirstNameEN" field.
  String? _firstNameEN;
  String get firstNameEN => _firstNameEN ?? '';
  set firstNameEN(String? val) => _firstNameEN = val;

  bool hasFirstNameEN() => _firstNameEN != null;

  // "FatherNameEN" field.
  String? _fatherNameEN;
  String get fatherNameEN => _fatherNameEN ?? '';
  set fatherNameEN(String? val) => _fatherNameEN = val;

  bool hasFatherNameEN() => _fatherNameEN != null;

  // "GrandFatherNameEN" field.
  String? _grandFatherNameEN;
  String get grandFatherNameEN => _grandFatherNameEN ?? '';
  set grandFatherNameEN(String? val) => _grandFatherNameEN = val;

  bool hasGrandFatherNameEN() => _grandFatherNameEN != null;

  // "FamilyNameEN" field.
  String? _familyNameEN;
  String get familyNameEN => _familyNameEN ?? '';
  set familyNameEN(String? val) => _familyNameEN = val;

  bool hasFamilyNameEN() => _familyNameEN != null;

  // "MotherNameEN" field.
  String? _motherNameEN;
  String get motherNameEN => _motherNameEN ?? '';
  set motherNameEN(String? val) => _motherNameEN = val;

  bool hasMotherNameEN() => _motherNameEN != null;

  // "DateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  set dateOfBirth(DateTime? val) => _dateOfBirth = val;

  bool hasDateOfBirth() => _dateOfBirth != null;

  // "BirthOfPlace" field.
  String? _birthOfPlace;
  String get birthOfPlace => _birthOfPlace ?? '';
  set birthOfPlace(String? val) => _birthOfPlace = val;

  bool hasBirthOfPlace() => _birthOfPlace != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "Nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  set nationality(String? val) => _nationality = val;

  bool hasNationality() => _nationality != null;

  // "ResidentOfTheCountry" field.
  bool? _residentOfTheCountry;
  bool get residentOfTheCountry => _residentOfTheCountry ?? false;
  set residentOfTheCountry(bool? val) => _residentOfTheCountry = val;

  bool hasResidentOfTheCountry() => _residentOfTheCountry != null;

  // "HaveAnAmericanPassport" field.
  bool? _haveAnAmericanPassport;
  bool get haveAnAmericanPassport => _haveAnAmericanPassport ?? false;
  set haveAnAmericanPassport(bool? val) => _haveAnAmericanPassport = val;

  bool hasHaveAnAmericanPassport() => _haveAnAmericanPassport != null;

  // "Profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  set profession(String? val) => _profession = val;

  bool hasProfession() => _profession != null;

  // "PlaceOfWork" field.
  String? _placeOfWork;
  String get placeOfWork => _placeOfWork ?? '';
  set placeOfWork(String? val) => _placeOfWork = val;

  bool hasPlaceOfWork() => _placeOfWork != null;

  // "MonthlyInComeDollar" field.
  String? _monthlyInComeDollar;
  String get monthlyInComeDollar => _monthlyInComeDollar ?? '';
  set monthlyInComeDollar(String? val) => _monthlyInComeDollar = val;

  bool hasMonthlyInComeDollar() => _monthlyInComeDollar != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "Population" field.
  String? _population;
  String get population => _population ?? '';
  set population(String? val) => _population = val;

  bool hasPopulation() => _population != null;

  // "AddressText" field.
  String? _addressText;
  String get addressText => _addressText ?? '';
  set addressText(String? val) => _addressText = val;

  bool hasAddressText() => _addressText != null;

  // "AreYouTheRealBeneficiaryOfAccount" field.
  bool? _areYouTheRealBeneficiaryOfAccount;
  bool get areYouTheRealBeneficiaryOfAccount =>
      _areYouTheRealBeneficiaryOfAccount ?? false;
  set areYouTheRealBeneficiaryOfAccount(bool? val) =>
      _areYouTheRealBeneficiaryOfAccount = val;

  bool hasAreYouTheRealBeneficiaryOfAccount() =>
      _areYouTheRealBeneficiaryOfAccount != null;

  // "NameOfTheBeneficialOwner" field.
  String? _nameOfTheBeneficialOwner;
  String get nameOfTheBeneficialOwner => _nameOfTheBeneficialOwner ?? '';
  set nameOfTheBeneficialOwner(String? val) => _nameOfTheBeneficialOwner = val;

  bool hasNameOfTheBeneficialOwner() => _nameOfTheBeneficialOwner != null;

  static RegisterationFormDataStruct fromMap(Map<String, dynamic> data) =>
      RegisterationFormDataStruct(
        firstNameAR: data['FirstNameAR'] as String?,
        fatherNameAR: data['FatherNameAR'] as String?,
        grandFatherNameAR: data['GrandFatherNameAR'] as String?,
        familyNameAR: data['FamilyNameAR'] as String?,
        firstNameEN: data['FirstNameEN'] as String?,
        fatherNameEN: data['FatherNameEN'] as String?,
        grandFatherNameEN: data['GrandFatherNameEN'] as String?,
        familyNameEN: data['FamilyNameEN'] as String?,
        motherNameEN: data['MotherNameEN'] as String?,
        dateOfBirth: data['DateOfBirth'] as DateTime?,
        birthOfPlace: data['BirthOfPlace'] as String?,
        gender: data['Gender'] as String?,
        nationality: data['Nationality'] as String?,
        residentOfTheCountry: data['ResidentOfTheCountry'] as bool?,
        haveAnAmericanPassport: data['HaveAnAmericanPassport'] as bool?,
        profession: data['Profession'] as String?,
        placeOfWork: data['PlaceOfWork'] as String?,
        monthlyInComeDollar: data['MonthlyInComeDollar'] as String?,
        city: data['City'] as String?,
        population: data['Population'] as String?,
        addressText: data['AddressText'] as String?,
        areYouTheRealBeneficiaryOfAccount:
            data['AreYouTheRealBeneficiaryOfAccount'] as bool?,
        nameOfTheBeneficialOwner: data['NameOfTheBeneficialOwner'] as String?,
      );

  static RegisterationFormDataStruct? maybeFromMap(dynamic data) => data is Map
      ? RegisterationFormDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FirstNameAR': _firstNameAR,
        'FatherNameAR': _fatherNameAR,
        'GrandFatherNameAR': _grandFatherNameAR,
        'FamilyNameAR': _familyNameAR,
        'FirstNameEN': _firstNameEN,
        'FatherNameEN': _fatherNameEN,
        'GrandFatherNameEN': _grandFatherNameEN,
        'FamilyNameEN': _familyNameEN,
        'MotherNameEN': _motherNameEN,
        'DateOfBirth': _dateOfBirth,
        'BirthOfPlace': _birthOfPlace,
        'Gender': _gender,
        'Nationality': _nationality,
        'ResidentOfTheCountry': _residentOfTheCountry,
        'HaveAnAmericanPassport': _haveAnAmericanPassport,
        'Profession': _profession,
        'PlaceOfWork': _placeOfWork,
        'MonthlyInComeDollar': _monthlyInComeDollar,
        'City': _city,
        'Population': _population,
        'AddressText': _addressText,
        'AreYouTheRealBeneficiaryOfAccount': _areYouTheRealBeneficiaryOfAccount,
        'NameOfTheBeneficialOwner': _nameOfTheBeneficialOwner,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FirstNameAR': serializeParam(
          _firstNameAR,
          ParamType.String,
        ),
        'FatherNameAR': serializeParam(
          _fatherNameAR,
          ParamType.String,
        ),
        'GrandFatherNameAR': serializeParam(
          _grandFatherNameAR,
          ParamType.String,
        ),
        'FamilyNameAR': serializeParam(
          _familyNameAR,
          ParamType.String,
        ),
        'FirstNameEN': serializeParam(
          _firstNameEN,
          ParamType.String,
        ),
        'FatherNameEN': serializeParam(
          _fatherNameEN,
          ParamType.String,
        ),
        'GrandFatherNameEN': serializeParam(
          _grandFatherNameEN,
          ParamType.String,
        ),
        'FamilyNameEN': serializeParam(
          _familyNameEN,
          ParamType.String,
        ),
        'MotherNameEN': serializeParam(
          _motherNameEN,
          ParamType.String,
        ),
        'DateOfBirth': serializeParam(
          _dateOfBirth,
          ParamType.DateTime,
        ),
        'BirthOfPlace': serializeParam(
          _birthOfPlace,
          ParamType.String,
        ),
        'Gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'Nationality': serializeParam(
          _nationality,
          ParamType.String,
        ),
        'ResidentOfTheCountry': serializeParam(
          _residentOfTheCountry,
          ParamType.bool,
        ),
        'HaveAnAmericanPassport': serializeParam(
          _haveAnAmericanPassport,
          ParamType.bool,
        ),
        'Profession': serializeParam(
          _profession,
          ParamType.String,
        ),
        'PlaceOfWork': serializeParam(
          _placeOfWork,
          ParamType.String,
        ),
        'MonthlyInComeDollar': serializeParam(
          _monthlyInComeDollar,
          ParamType.String,
        ),
        'City': serializeParam(
          _city,
          ParamType.String,
        ),
        'Population': serializeParam(
          _population,
          ParamType.String,
        ),
        'AddressText': serializeParam(
          _addressText,
          ParamType.String,
        ),
        'AreYouTheRealBeneficiaryOfAccount': serializeParam(
          _areYouTheRealBeneficiaryOfAccount,
          ParamType.bool,
        ),
        'NameOfTheBeneficialOwner': serializeParam(
          _nameOfTheBeneficialOwner,
          ParamType.String,
        ),
      }.withoutNulls;

  static RegisterationFormDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RegisterationFormDataStruct(
        firstNameAR: deserializeParam(
          data['FirstNameAR'],
          ParamType.String,
          false,
        ),
        fatherNameAR: deserializeParam(
          data['FatherNameAR'],
          ParamType.String,
          false,
        ),
        grandFatherNameAR: deserializeParam(
          data['GrandFatherNameAR'],
          ParamType.String,
          false,
        ),
        familyNameAR: deserializeParam(
          data['FamilyNameAR'],
          ParamType.String,
          false,
        ),
        firstNameEN: deserializeParam(
          data['FirstNameEN'],
          ParamType.String,
          false,
        ),
        fatherNameEN: deserializeParam(
          data['FatherNameEN'],
          ParamType.String,
          false,
        ),
        grandFatherNameEN: deserializeParam(
          data['GrandFatherNameEN'],
          ParamType.String,
          false,
        ),
        familyNameEN: deserializeParam(
          data['FamilyNameEN'],
          ParamType.String,
          false,
        ),
        motherNameEN: deserializeParam(
          data['MotherNameEN'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['DateOfBirth'],
          ParamType.DateTime,
          false,
        ),
        birthOfPlace: deserializeParam(
          data['BirthOfPlace'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['Gender'],
          ParamType.String,
          false,
        ),
        nationality: deserializeParam(
          data['Nationality'],
          ParamType.String,
          false,
        ),
        residentOfTheCountry: deserializeParam(
          data['ResidentOfTheCountry'],
          ParamType.bool,
          false,
        ),
        haveAnAmericanPassport: deserializeParam(
          data['HaveAnAmericanPassport'],
          ParamType.bool,
          false,
        ),
        profession: deserializeParam(
          data['Profession'],
          ParamType.String,
          false,
        ),
        placeOfWork: deserializeParam(
          data['PlaceOfWork'],
          ParamType.String,
          false,
        ),
        monthlyInComeDollar: deserializeParam(
          data['MonthlyInComeDollar'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['City'],
          ParamType.String,
          false,
        ),
        population: deserializeParam(
          data['Population'],
          ParamType.String,
          false,
        ),
        addressText: deserializeParam(
          data['AddressText'],
          ParamType.String,
          false,
        ),
        areYouTheRealBeneficiaryOfAccount: deserializeParam(
          data['AreYouTheRealBeneficiaryOfAccount'],
          ParamType.bool,
          false,
        ),
        nameOfTheBeneficialOwner: deserializeParam(
          data['NameOfTheBeneficialOwner'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RegisterationFormDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegisterationFormDataStruct &&
        firstNameAR == other.firstNameAR &&
        fatherNameAR == other.fatherNameAR &&
        grandFatherNameAR == other.grandFatherNameAR &&
        familyNameAR == other.familyNameAR &&
        firstNameEN == other.firstNameEN &&
        fatherNameEN == other.fatherNameEN &&
        grandFatherNameEN == other.grandFatherNameEN &&
        familyNameEN == other.familyNameEN &&
        motherNameEN == other.motherNameEN &&
        dateOfBirth == other.dateOfBirth &&
        birthOfPlace == other.birthOfPlace &&
        gender == other.gender &&
        nationality == other.nationality &&
        residentOfTheCountry == other.residentOfTheCountry &&
        haveAnAmericanPassport == other.haveAnAmericanPassport &&
        profession == other.profession &&
        placeOfWork == other.placeOfWork &&
        monthlyInComeDollar == other.monthlyInComeDollar &&
        city == other.city &&
        population == other.population &&
        addressText == other.addressText &&
        areYouTheRealBeneficiaryOfAccount ==
            other.areYouTheRealBeneficiaryOfAccount &&
        nameOfTheBeneficialOwner == other.nameOfTheBeneficialOwner;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstNameAR,
        fatherNameAR,
        grandFatherNameAR,
        familyNameAR,
        firstNameEN,
        fatherNameEN,
        grandFatherNameEN,
        familyNameEN,
        motherNameEN,
        dateOfBirth,
        birthOfPlace,
        gender,
        nationality,
        residentOfTheCountry,
        haveAnAmericanPassport,
        profession,
        placeOfWork,
        monthlyInComeDollar,
        city,
        population,
        addressText,
        areYouTheRealBeneficiaryOfAccount,
        nameOfTheBeneficialOwner
      ]);
}

RegisterationFormDataStruct createRegisterationFormDataStruct({
  String? firstNameAR,
  String? fatherNameAR,
  String? grandFatherNameAR,
  String? familyNameAR,
  String? firstNameEN,
  String? fatherNameEN,
  String? grandFatherNameEN,
  String? familyNameEN,
  String? motherNameEN,
  DateTime? dateOfBirth,
  String? birthOfPlace,
  String? gender,
  String? nationality,
  bool? residentOfTheCountry,
  bool? haveAnAmericanPassport,
  String? profession,
  String? placeOfWork,
  String? monthlyInComeDollar,
  String? city,
  String? population,
  String? addressText,
  bool? areYouTheRealBeneficiaryOfAccount,
  String? nameOfTheBeneficialOwner,
}) =>
    RegisterationFormDataStruct(
      firstNameAR: firstNameAR,
      fatherNameAR: fatherNameAR,
      grandFatherNameAR: grandFatherNameAR,
      familyNameAR: familyNameAR,
      firstNameEN: firstNameEN,
      fatherNameEN: fatherNameEN,
      grandFatherNameEN: grandFatherNameEN,
      familyNameEN: familyNameEN,
      motherNameEN: motherNameEN,
      dateOfBirth: dateOfBirth,
      birthOfPlace: birthOfPlace,
      gender: gender,
      nationality: nationality,
      residentOfTheCountry: residentOfTheCountry,
      haveAnAmericanPassport: haveAnAmericanPassport,
      profession: profession,
      placeOfWork: placeOfWork,
      monthlyInComeDollar: monthlyInComeDollar,
      city: city,
      population: population,
      addressText: addressText,
      areYouTheRealBeneficiaryOfAccount: areYouTheRealBeneficiaryOfAccount,
      nameOfTheBeneficialOwner: nameOfTheBeneficialOwner,
    );
