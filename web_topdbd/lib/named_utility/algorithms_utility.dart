import 'package:uuid/uuid.dart';

final class AlgorithmsUtility {
  AlgorithmsUtility._();

  static String get getV1ByUuidParameterString {
    return const Uuid().v1();
  }
}