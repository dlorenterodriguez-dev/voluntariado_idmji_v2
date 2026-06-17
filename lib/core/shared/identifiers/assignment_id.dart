import 'package:uuid/uuid.dart';

class AssignmentId {
  AssignmentId._(this.value);

  static const Uuid _uuid = Uuid();

  final String value;

  factory AssignmentId.fromString(String value) {
    if (!Uuid.isValidUUID(fromString: value)) {
      throw FormatException('Invalid AssignmentId: $value');
    }

    return AssignmentId._(value.toLowerCase());
  }

  factory AssignmentId.generate() {
    return AssignmentId._(_uuid.v4().toLowerCase());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AssignmentId && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}