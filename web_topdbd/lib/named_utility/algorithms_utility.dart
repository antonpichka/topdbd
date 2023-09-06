import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

@immutable
final class AlgorithmsUtility {
  const AlgorithmsUtility._();

  static String get getV1ByUuidParameterString {
    return const Uuid().v1();
  }
}