import 'package:uuid/uuid.dart';

class CapabilityId {
  CapabilityId._(this.value);

  static const Uuid _uuid = Uuid();

  /// UUID permanente e inmutable.
  final String value;

  /// Crea un identificador a partir de un UUID existente.
  ///
  /// Lanza [FormatException] si el formato no es válido.
  factory CapabilityId.fromString(String value) {
    if (!Uuid.isValidUUID(fromString: value)) {
      throw FormatException('Invalid CapabilityId: $value');
    }

    return CapabilityId._(value.toLowerCase());
  }

  /// Genera un nuevo UUID v4 válido.
  factory CapabilityId.generate() {
    return CapabilityId._(_uuid.v4().toLowerCase());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CapabilityId && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}