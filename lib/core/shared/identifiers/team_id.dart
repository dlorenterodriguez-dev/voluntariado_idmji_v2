import 'package:uuid/uuid.dart';

class TeamId {
  TeamId._(this.value);

  static const Uuid _uuid = Uuid();

  final String value;

  factory TeamId.fromString(String value) {
    if (!Uuid.isValidUUID(fromString: value)) {
      throw FormatException('Invalid TeamId: $value');
    }

    return TeamId._(value.toLowerCase());
  }

  factory TeamId.generate() {
    return TeamId._(_uuid.v4().toLowerCase());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TeamId && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}