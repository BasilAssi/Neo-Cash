// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future setAuthenticatedUserInfo(dynamic payloadMap) async {
  // Add your function code here!
// Extract the customer info or set as empty map if null
  final customerInfo = payloadMap['customerInfo'] ?? {};

  // Update the FFAppState with the extracted fields, ensuring non-null values
  FFAppState().updateAuthenticatedUserStruct(
    (e) => e
      // Customer Info Fields
      ..correctionReason = customerInfo['correctionReason'] ?? ''
      ..pepPosition = customerInfo['pepPosition'] ?? ''
      ..thirdNameAr = customerInfo['thirdNameAr'] ?? ''
      ..gender = customerInfo['gender'] ?? ''
      ..middleNameAr = customerInfo['middleNameAr'] ?? ''
      ..mobileNumber = customerInfo['mobileNumber'] ?? ''
      ..cityCode = customerInfo['cityCode'] ?? ''
      // ..customerDocuments =
      //     (customerInfo['customerDocuments'] as List<dynamic>?)
      //             ?.map((doc) => CustomerDocumentStruct(
      //                   documentType: doc['documentType'] ?? '',
      //                   documentUrl: doc['documentUrl'] ?? '',
      //                 ))
      //             .toList() ??
      //         []
      ..mobileNumberVerified = customerInfo['mobileNumberVerified'] ?? false
      ..thirdName = customerInfo['thirdName'] ?? ''
      ..idNumber = customerInfo['idNumber'] ?? ''
      ..countryId = customerInfo['countryId'] ?? ''
      ..customerStatus = customerInfo['customerStatus'] ?? ''
      ..trueBeneficiaryName = customerInfo['trueBeneficiaryName'] ?? ''
      ..birthPlace = customerInfo['birthPlace'] ?? ''
      ..emailAddress = customerInfo['emailAddress'] ?? ''
      ..nationalityCode = customerInfo['nationalityCode'] ?? ''
      ..localPepFullName = customerInfo['localPepFullName'] ?? ''
      ..isUsPassportHolder = customerInfo['isUsPassportHolder'] ?? false
      ..motherNameEn = customerInfo['motherNameEn'] ?? ''
      ..relationShipWithTrueBeneficiary =
          customerInfo['relationShipWithTrueBeneficiary'] ?? ''
      ..familyName = customerInfo['familyName'] ?? ''
      ..relationshipWithPep = customerInfo['relationshipWithPep'] ?? ''
      ..placeOfWork = customerInfo['placeOfWork'] ?? ''
      ..familyNameAr = customerInfo['familyNameAr'] ?? ''
      ..latinPepFullName = customerInfo['latinPepFullName'] ?? ''
      ..profession = customerInfo['profession'] ?? ''
      ..isMissingDocuments = customerInfo['isMissingDocuments'] ?? false
      ..idType = customerInfo['idType'] ?? ''
      ..address = customerInfo['address'] ?? ''
      ..mobileNumber2 = customerInfo['mobileNumber2'] ?? ''
      ..mobileNumberPrefix = customerInfo['mobileNumberPrefix'] ?? ''
      ..isPEP = customerInfo['isPEP'] ?? false
      ..encodedId = customerInfo['encodedId'] ?? ''
      ..birthDate = customerInfo['birthDate'] ?? ''
      ..firstName = customerInfo['firstName'] ?? ''
      ..emailVerified = customerInfo['emailVerified'] ?? false
      ..areaCode = customerInfo['areaCode'] ?? ''
      ..isTrueAccountBeneficiary =
          customerInfo['isTrueAccountBeneficiary'] ?? false
      ..isDeviceRegistered = customerInfo['isDeviceRegistered'] ?? false
      ..middleName = customerInfo['middleName'] ?? ''
      ..firstNameAr = customerInfo['firstNameAr'] ?? ''
      ..monthlyIncomeUsd = customerInfo['monthlyIncomeUsd'] ?? '0'
      ..residencyType = customerInfo['residencyType'] ?? '',
  );
}
