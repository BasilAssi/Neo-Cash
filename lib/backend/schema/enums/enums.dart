import 'package:collection/collection.dart';

enum DateTypes {
  TODAY,
  LAST_WEEK,
  LAST_MONTH,
}

enum EnumCustomerStatus {
  REJECTED_BY_CARD_PROCESSOR,
  REJECTED,
  APPROVED,
  WAITING_AML_APPROVAL,
  APPROVED_LOCALLY,
  WAITING_APPROVAL,
  NEED_MODIFICATION,
  MODIFIED,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (DateTypes):
      return DateTypes.values.deserialize(value) as T?;
    case (EnumCustomerStatus):
      return EnumCustomerStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
