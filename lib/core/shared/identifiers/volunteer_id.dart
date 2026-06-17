import 'package:uuid/uuid.dart';

class VolunteerId {
  VolunteerId._(this.value);

  static const Uuid _uuid = Uuid();

  /// UUID permanente e inmutable.
  final String value;

  /// Crea un identificador a partir de un UUID existente.
  ///
  /// Lanza [FormatException] si el formato no es válido.
  factory VolunteerId.fromString(String value) {
    if (!Uuid.isValidUUID(fromString: value)) {
      throw FormatException('Invalid VolunteerId: $value');
    }

    return VolunteerId._(value.toLowerCase());
  }

  /// Genera un nuevo UUID v4 válido.
  factory VolunteerId.generate() {
    return VolunteerId._(_uuid.v4().toLowerCase());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is VolunteerId && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}