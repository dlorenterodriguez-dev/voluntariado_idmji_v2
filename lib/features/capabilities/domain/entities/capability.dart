import 'capability_icon.dart';

class Capability {
  const Capability({
    required this.id,
    required this.name,
    required this.icon,
  });

  /// Identificador permanente y único.
  final String id;

  /// Nombre visible de la capacidad.
  final String name;

  /// Icono asociado a la capacidad.
  ///
  /// Se representa mediante un enum del dominio para mantener
  /// la independencia respecto a Flutter.
  final CapabilityIcon icon;
}