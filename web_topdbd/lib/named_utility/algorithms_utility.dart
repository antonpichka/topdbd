import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

@immutable
final class AlgorithmsUtility {
  const AlgorithmsUtility._();

  static String get getStringWhereV1ByUuid {
    return const Uuid().v1();
  }
}