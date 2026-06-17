import 'package:uuid/uuid.dart';

class EventId {
  EventId._(this.value);

  static const Uuid _uuid = Uuid();

  /// UUID permanente e inmutable.
  final String value;

  factory EventId.fromString(String value) {
    if (!Uuid.isValidUUID(fromString: value)) {
      throw FormatException('Invalid EventId: $value');
    }

    return EventId._(value.toLowerCase());
  }

  factory EventId.generate() {
    return EventId._(_uuid.v4().toLowerCase());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is EventId && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}