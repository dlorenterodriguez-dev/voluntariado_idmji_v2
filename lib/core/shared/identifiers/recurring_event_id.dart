import 'package:uuid/uuid.dart';

class RecurringEventId {
  RecurringEventId._(this.value);

  static const Uuid _uuid = Uuid();

  /// UUID permanente e inmutable.
  final String value;

  /// Crea un identificador a partir de un UUID existente.
  ///
  /// Lanza [FormatException] si el formato no es válido.
  factory RecurringEventId.fromString(String value) {
    if (!Uuid.isValidUUID(fromString: value)) {
      throw FormatException('Invalid RecurringEventId: $value');
    }

    return RecurringEventId._(value.toLowerCase());
  }

  /// Genera un nuevo UUID v4 válido.
  factory RecurringEventId.generate() {
    return RecurringEventId._(_uuid.v4().toLowerCase());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is RecurringEventId && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}
