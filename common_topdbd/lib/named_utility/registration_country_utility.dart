import 'package:meta/meta.dart';

@immutable
final class RegistrationCountryUtility {
  final String uniqueIdByUser;
  final String nameCountry;

  const RegistrationCountryUtility(this.uniqueIdByUser, this.nameCountry);
}